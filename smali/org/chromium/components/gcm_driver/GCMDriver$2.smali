.class Lorg/chromium/components/gcm_driver/GCMDriver$2;
.super Landroid/os/AsyncTask;
.source "GCMDriver.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/components/gcm_driver/GCMDriver;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$senderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->this$0:Lorg/chromium/components/gcm_driver/GCMDriver;

    iput-object p2, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->val$senderId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->val$appId:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->this$0:Lorg/chromium/components/gcm_driver/GCMDriver;

    # getter for: Lorg/chromium/components/gcm_driver/GCMDriver;->mSubscriber:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;
    invoke-static {v1}, Lorg/chromium/components/gcm_driver/GCMDriver;->access$000(Lorg/chromium/components/gcm_driver/GCMDriver;)Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->val$senderId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;->unsubscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string/jumbo v1, "GCMDriver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GCM unsubscription failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->val$appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->val$senderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/components/gcm_driver/GCMDriver$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->this$0:Lorg/chromium/components/gcm_driver/GCMDriver;

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->this$0:Lorg/chromium/components/gcm_driver/GCMDriver;

    # getter for: Lorg/chromium/components/gcm_driver/GCMDriver;->mNativeGCMDriverAndroid:J
    invoke-static {v1}, Lorg/chromium/components/gcm_driver/GCMDriver;->access$100(Lorg/chromium/components/gcm_driver/GCMDriver;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/chromium/components/gcm_driver/GCMDriver$2;->val$appId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    # invokes: Lorg/chromium/components/gcm_driver/GCMDriver;->nativeOnUnregisterFinished(JLjava/lang/String;Z)V
    invoke-static {v0, v2, v3, v1, v4}, Lorg/chromium/components/gcm_driver/GCMDriver;->access$300(Lorg/chromium/components/gcm_driver/GCMDriver;JLjava/lang/String;Z)V

    .line 117
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/components/gcm_driver/GCMDriver$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
