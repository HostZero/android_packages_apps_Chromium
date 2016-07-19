.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;
.super Ljava/lang/Object;
.source "AutofillDialogResult.java"


# instance fields
.field private final mAdministrativeArea:Ljava/lang/String;

.field private final mCountryCode:Ljava/lang/String;

.field private final mDependentLocality:Ljava/lang/String;

.field private final mLanguageCode:Ljava/lang/String;

.field private final mLocality:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPhoneNumber:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mSortingCode:Ljava/lang/String;

.field private final mStreetAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mName:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mPhoneNumber:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mStreetAddress:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mLocality:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mDependentLocality:Ljava/lang/String;

    .line 115
    iput-object p6, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mAdministrativeArea:Ljava/lang/String;

    .line 116
    iput-object p7, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mPostalCode:Ljava/lang/String;

    .line 117
    iput-object p8, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mSortingCode:Ljava/lang/String;

    .line 118
    iput-object p9, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mCountryCode:Ljava/lang/String;

    .line 119
    iput-object p10, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mLanguageCode:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public getAdministrativeArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mAdministrativeArea:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDependentLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mDependentLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mSortingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;->mStreetAddress:Ljava/lang/String;

    return-object v0
.end method
