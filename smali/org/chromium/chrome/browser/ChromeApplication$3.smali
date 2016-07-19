.class Lorg/chromium/chrome/browser/ChromeApplication$3;
.super Ljava/lang/Object;
.source "ChromeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeApplication;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/services/AndroidEduOwnerCheckCallback;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeApplication;Lorg/chromium/chrome/browser/services/AndroidEduOwnerCheckCallback;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeApplication$3;->this$0:Lorg/chromium/chrome/browser/ChromeApplication;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ChromeApplication$3;->val$callback:Lorg/chromium/chrome/browser/services/AndroidEduOwnerCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeApplication$3;->val$callback:Lorg/chromium/chrome/browser/services/AndroidEduOwnerCheckCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/services/AndroidEduOwnerCheckCallback;->onSchoolCheckDone(Z)V

    .line 387
    return-void
.end method
