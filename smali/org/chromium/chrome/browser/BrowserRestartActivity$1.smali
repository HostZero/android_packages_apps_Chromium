.class Lorg/chromium/chrome/browser/BrowserRestartActivity$1;
.super Ljava/lang/Object;
.source "BrowserRestartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/BrowserRestartActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/BrowserRestartActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/chromium/chrome/browser/BrowserRestartActivity$1;->this$0:Lorg/chromium/chrome/browser/BrowserRestartActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/BrowserRestartActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/BrowserRestartActivity$1;->this$0:Lorg/chromium/chrome/browser/BrowserRestartActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/BrowserRestartActivity$1;->val$intent:Landroid/content/Intent;

    # invokes: Lorg/chromium/chrome/browser/BrowserRestartActivity;->destroyProcess(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/BrowserRestartActivity;->access$000(Lorg/chromium/chrome/browser/BrowserRestartActivity;Landroid/content/Intent;)V

    .line 65
    return-void
.end method
