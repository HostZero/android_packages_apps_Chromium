.class public Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
.super Ljava/lang/Object;
.source "PersonalDataManager.java"


# instance fields
.field private mCompanyName:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mDependentLocality:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field private mGUID:Ljava/lang/String;

.field private mIsLocal:Z

.field private mLabel:Ljava/lang/String;

.field private mLanguageCode:Ljava/lang/String;

.field private mLocality:Ljava/lang/String;

.field private mOrigin:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mSortingCode:Ljava/lang/String;

.field private mStreetAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mGUID:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mOrigin:Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mIsLocal:Z

    .line 101
    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mFullName:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCompanyName:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mStreetAddress:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mRegion:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mLocality:Ljava/lang/String;

    .line 106
    iput-object p8, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mDependentLocality:Ljava/lang/String;

    .line 107
    iput-object p9, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mPostalCode:Ljava/lang/String;

    .line 108
    iput-object p10, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mSortingCode:Ljava/lang/String;

    .line 109
    iput-object p11, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCountryCode:Ljava/lang/String;

    .line 110
    iput-object p12, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mPhoneNumber:Ljava/lang/String;

    .line 111
    iput-object p13, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mEmailAddress:Ljava/lang/String;

    .line 112
    iput-object p14, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mLanguageCode:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mGUID:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mOrigin:Ljava/lang/String;

    .line 77
    iput-boolean p3, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mIsLocal:Z

    .line 78
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mFullName:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCompanyName:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mStreetAddress:Ljava/lang/String;

    .line 81
    iput-object p7, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mRegion:Ljava/lang/String;

    .line 82
    iput-object p8, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mLocality:Ljava/lang/String;

    .line 83
    iput-object p9, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mDependentLocality:Ljava/lang/String;

    .line 84
    iput-object p10, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mPostalCode:Ljava/lang/String;

    .line 85
    iput-object p11, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mSortingCode:Ljava/lang/String;

    .line 86
    iput-object p12, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCountryCode:Ljava/lang/String;

    .line 87
    iput-object p13, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mPhoneNumber:Ljava/lang/String;

    .line 88
    iput-object p14, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mEmailAddress:Ljava/lang/String;

    .line 89
    iput-object p15, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mLanguageCode:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
    .locals 16

    .prologue
    .line 66
    new-instance v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDependentLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mDependentLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLocal()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mIsLocal:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mSortingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mStreetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mCountryCode:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mGUID:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mLabel:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mLanguageCode:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setStreetAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->mStreetAddress:Ljava/lang/String;

    .line 217
    return-void
.end method
