//
//  OptionViewController.m
//  VTDirectDemo
//
//  Created by Nanang Rafsanjani on 3/15/16.
//  Copyright © 2016 Veritrans. All rights reserved.
//

#import "OptionViewController.h"

#import <MidtransCoreKit/VTCustomerDetails.h>
#import <MidtransCoreKit/VTAddress.h>
#import <MidtransCoreKit/VTConfig.h>

@interface OptionViewController ()

@property (strong, nonatomic) IBOutlet UISegmentedControl *cardOptionsSegment;


@property (strong, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *phoneTextField;

@property (strong, nonatomic) IBOutlet UITextField *countryTextField;
@property (strong, nonatomic) IBOutlet UITextField *cityTextField;
@property (strong, nonatomic) IBOutlet UITextField *postCodeTextField;
@property (strong, nonatomic) IBOutlet UITextField *addressTextField;
@property (strong, nonatomic) IBOutlet UITextField *billFirstNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *billLastNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *billPhoneTextField;

@property (strong, nonatomic) IBOutlet UITextField *shipCountryTextField;
@property (strong, nonatomic) IBOutlet UITextField *shipCityTextField;
@property (strong, nonatomic) IBOutlet UITextField *shipPostCodeTextField;
@property (strong, nonatomic) IBOutlet UITextField *shipAddressTextField;
@property (strong, nonatomic) IBOutlet UITextField *shipFirstNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *shipLastNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *shipPhoneTextField;

@end

@implementation OptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([CONFIG creditCardFeature] == VTCreditCardFeatureOneClick) {
        _cardOptionsSegment.selectedSegmentIndex = 0;
    } else {
        _cardOptionsSegment.selectedSegmentIndex = 1;
    }
    
    NSData *encoded = [[NSUserDefaults standardUserDefaults] objectForKey:@"vt_customer"];
    VTCustomerDetails *customer = [NSKeyedUnarchiver unarchiveObjectWithData:encoded];
    
    _firstNameTextField.text = customer.firstName;
    _lastNameTextField.text = customer.lastName;
    _emailTextField.text = customer.email;
    _phoneTextField.text = customer.phone;
    
    _countryTextField.text = customer.billingAddress.countryCode;
    _cityTextField.text = customer.billingAddress.city;
    _postCodeTextField.text = customer.billingAddress.postalCode;
    _addressTextField.text = customer.billingAddress.address;
    _billFirstNameTextField.text = customer.billingAddress.firstName;
    _billLastNameTextField.text = customer.billingAddress.lastName;
    _billPhoneTextField.text = customer.billingAddress.phone;
    
    _shipAddressTextField.text = customer.shippingAddress.address;
    _shipCityTextField.text = customer.shippingAddress.city;
    _shipCountryTextField.text = customer.shippingAddress.countryCode;
    _shipFirstNameTextField.text = customer.shippingAddress.firstName;
    _shipLastNameTextField.text = customer.shippingAddress.lastName;
    _shipPhoneTextField.text = customer.shippingAddress.phone;
    _shipPostCodeTextField.text = customer.shippingAddress.postalCode;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)countryCode {
    if ([_countryTextField.text.lowercaseString isEqualToString:@"indonesia"]) {
        return @"IDN";
    } else {
        return @"";
    }
}

- (IBAction)savePressed:(UIBarButtonItem *)sender {
    VTAddress *shipAddr = [VTAddress addressWithFirstName:_shipFirstNameTextField.text lastName:_shipLastNameTextField.text phone:_shipPhoneTextField.text address:_shipAddressTextField.text city:_shipCityTextField.text postalCode:_shipPostCodeTextField.text countryCode:[self countryCode]];
    VTAddress *billAddr = [VTAddress addressWithFirstName:_billFirstNameTextField.text lastName:_billLastNameTextField.text phone:_billPhoneTextField.text address:_addressTextField.text city:_cityTextField.text postalCode:_postCodeTextField.text countryCode:[self countryCode]];
    VTCustomerDetails *customer = [[VTCustomerDetails alloc] initWithFirstName:_firstNameTextField.text lastName:_lastNameTextField.text email:_emailTextField.text phone:_phoneTextField.text shippingAddress:shipAddr billingAddress:billAddr];
    
    //save to NSUserDefaults
    NSData *encoded = [NSKeyedArchiver archivedDataWithRootObject:customer];
    [[NSUserDefaults standardUserDefaults] setObject:encoded forKey:@"vt_customer"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)cardOptionsChanged:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        [CONFIG setCreditCardFeature:VTCreditCardFeatureOneClick];
    } else {
        [CONFIG setCreditCardFeature:VTCreditCardFeatureTwoClick];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
