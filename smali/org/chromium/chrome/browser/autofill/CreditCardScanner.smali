.class public Lorg/chromium/chrome/browser/autofill/CreditCardScanner;
.super Ljava/lang/Object;
.source "CreditCardScanner.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static sFactory:Lorg/chromium/chrome/browser/autofill/CreditCardScanner$Factory;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mNativeScanner:J

.field protected mWindow:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method protected constructor <init>(JLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Lorg/chromium/chrome/browser/autofill/CreditCardScanner;->mNativeScanner:J

    .line 85
    iput-object p3, p0, Lorg/chromium/chrome/browser/autofill/CreditCardScanner;->mContext:Landroid/content/Context;

    .line 86
    iput-object p4, p0, Lorg/chromium/chrome/browser/autofill/CreditCardScanner;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    .line 87
    return-void
.end method

.method private static create(JLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/chrome/browser/autofill/CreditCardScanner;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lorg/chromium/chrome/browser/autofill/CreditCardScanner;->sFactory:Lorg/chromium/chrome/browser/autofill/CreditCardScanner$Factory;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/autofill/CreditCardScanner;->sFactory:Lorg/chromium/chrome/browser/autofill/CreditCardScanner$Factory;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/autofill/CreditCardScanner$Factory;->create(JLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/chrome/browser/autofill/CreditCardScanner;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/autofill/CreditCardScanner;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/autofill/CreditCardScanner;-><init>(JLandroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;)V

    goto :goto_0
.end method


# virtual methods
.method protected canScan()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected native nativeScanCancelled(J)V
.end method

.method protected native nativeScanCompleted(JLjava/lang/String;II)V
.end method

.method protected scan()V
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/CreditCardScanner;->mNativeScanner:J

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/CreditCardScanner;->nativeScanCancelled(J)V

    .line 104
    return-void
.end method
