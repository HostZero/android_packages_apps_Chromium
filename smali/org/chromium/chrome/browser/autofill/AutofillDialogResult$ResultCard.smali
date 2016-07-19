.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;
.super Ljava/lang/Object;
.source "AutofillDialogResult.java"


# instance fields
.field private final mCvn:Ljava/lang/String;

.field private final mExpirationMonth:I

.field private final mExpirationYear:I

.field private final mPan:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;->mExpirationMonth:I

    .line 36
    iput p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;->mExpirationYear:I

    .line 37
    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;->mPan:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;->mCvn:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getCvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;->mCvn:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationMonth()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;->mExpirationMonth:I

    return v0
.end method

.method public getExpirationYear()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;->mExpirationYear:I

    return v0
.end method

.method public getPan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogResult$ResultCard;->mPan:Ljava/lang/String;

    return-object v0
.end method
