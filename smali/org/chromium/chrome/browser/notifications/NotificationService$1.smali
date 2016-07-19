.class Lorg/chromium/chrome/browser/notifications/NotificationService$1;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/notifications/NotificationService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/notifications/NotificationService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationService$1;->this$0:Lorg/chromium/chrome/browser/notifications/NotificationService;

    iput-object p2, p0, Lorg/chromium/chrome/browser/notifications/NotificationService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/NotificationService$1;->this$0:Lorg/chromium/chrome/browser/notifications/NotificationService;

    iget-object v1, p0, Lorg/chromium/chrome/browser/notifications/NotificationService$1;->val$intent:Landroid/content/Intent;

    # invokes: Lorg/chromium/chrome/browser/notifications/NotificationService;->dispatchIntentOnUIThread(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/notifications/NotificationService;->access$100(Lorg/chromium/chrome/browser/notifications/NotificationService;Landroid/content/Intent;)V

    .line 67
    return-void
.end method
