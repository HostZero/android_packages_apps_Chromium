.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;
.super Ljava/lang/Object;
.source "AutofillDialogResult.java"


# instance fields
.field private final mBillingAddress:Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;

.field private final mCard:Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;

.field private final mEmail:Ljava/lang/String;

.field private final mGoogleTransactionId:Ljava/lang/String;

.field private final mShippingAddress:Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;->mEmail:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;->mGoogleTransactionId:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;->mCard:Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;

    .line 229
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;->mBillingAddress:Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;

    .line 230
    iput-object p5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;->mShippingAddress:Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;

    .line 231
    return-void
.end method


# virtual methods
.method public getBillingAddress()Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;->mBillingAddress:Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;

    return-object v0
.end method

.method public getCard()Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;->mCard:Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;->mGoogleTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingAddress()Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultWallet;->mShippingAddress:Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultAddress;

    return-object v0
.end method
