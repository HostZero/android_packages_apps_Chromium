.class Lorg/chromium/chrome/browser/ChromeApplication$2;
.super Ljava/lang/Object;
.source "ChromeApplication.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeApplication;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeApplication;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeApplication$2;->this$0:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 344
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$2;->this$0:Lorg/chromium/chrome/browser/ChromeApplication;

    # invokes: Lorg/chromium/chrome/browser/ChromeApplication;->onForegroundSessionEnd()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->access$700(Lorg/chromium/chrome/browser/ChromeApplication;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$2;->this$0:Lorg/chromium/chrome/browser/ChromeApplication;

    # invokes: Lorg/chromium/chrome/browser/ChromeApplication;->onForegroundActivityDestroyed()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->access$800(Lorg/chromium/chrome/browser/ChromeApplication;)V

    goto :goto_0
.end method
