.class final Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$1;
.super Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;
.source "ForcedSigninProcessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final onParametersReady()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$1;->isAndroidEduDevice()Z

    move-result v0

    .line 50
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$1;->hasChildAccount()Z

    move-result v1

    .line 52
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-boolean v2, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$1;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor$1;->val$appContext:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor;->processForcedSignIn(Landroid/content/Context;)V
    invoke-static {v0}, Lorg/chromium/chrome/browser/firstrun/ForcedSigninProcessor;->access$000(Landroid/content/Context;)V

    goto :goto_0
.end method
