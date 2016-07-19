.class Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;
.super Ljava/lang/Object;
.source "ChromeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-class v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;->this$0:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;Lorg/chromium/chrome/browser/ChromeApplication$1;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;-><init>(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;->this$0:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mSuspendRunnable:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->access$002(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;)Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;

    .line 139
    sget-boolean v0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;->this$0:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;

    # getter for: Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mWebKitTimersAreSuspended:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->access$100(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing$SuspendRunnable;->this$0:Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;

    # setter for: Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->mWebKitTimersAreSuspended:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;->access$102(Lorg/chromium/chrome/browser/ChromeApplication$BackgroundProcessing;Z)Z

    .line 141
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    .line 142
    return-void
.end method
