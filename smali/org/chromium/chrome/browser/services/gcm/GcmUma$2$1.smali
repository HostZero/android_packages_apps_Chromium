.class Lorg/chromium/chrome/browser/services/gcm/GcmUma$2$1;
.super Ljava/lang/Object;
.source "GcmUma.java"

# interfaces
.implements Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lorg/chromium/chrome/browser/services/gcm/GcmUma$2$1;->this$0:Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onSuccess(Z)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/gcm/GcmUma$2$1;->this$0:Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 45
    return-void
.end method
