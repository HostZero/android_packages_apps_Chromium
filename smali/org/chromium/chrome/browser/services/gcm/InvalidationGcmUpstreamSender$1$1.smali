.class Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;
.super Landroid/os/AsyncTask;
.source "InvalidationGcmUpstreamSender.java"


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;->this$1:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;

    iput-object p2, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;->this$1:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;->this$0:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;

    iget-object v1, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;->this$1:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;

    iget-object v1, v1, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;->val$to:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;->this$1:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;

    iget-object v2, v2, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;->val$dataToSend:Landroid/os/Bundle;

    iget-object v3, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;->val$token:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;->this$1:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;

    iget-object v4, v4, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;->val$applicationContext:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;->sendUpstreamMessage(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;->access$000(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method
