.class public final Lorg/chromium/chrome/browser/signin/SigninPromoUma;
.super Ljava/lang/Object;
.source "SigninPromoUma.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final SIGNIN_PROMO_ACCEPTED:I = 0x3

.field public static final SIGNIN_PROMO_ACCEPTED_WITH_ADVANCED:I = 0x4

.field public static final SIGNIN_PROMO_COUNT:I = 0x5

.field public static final SIGNIN_PROMO_DECLINED:I = 0x2

.field public static final SIGNIN_PROMO_ENABLED:I = 0x0

.field public static final SIGNIN_PROMO_SHOWN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/chromium/chrome/browser/signin/SigninPromoUma;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/signin/SigninPromoUma;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recordAction(I)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 25
    sget-boolean v0, Lorg/chromium/chrome/browser/signin/SigninPromoUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_1
    const-string/jumbo v0, "Signin.AndroidSigninPromoAction"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 28
    return-void
.end method
