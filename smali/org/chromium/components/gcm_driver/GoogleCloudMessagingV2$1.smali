.class Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2$1;
.super Landroid/os/Handler;
.source "GoogleCloudMessagingV2.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;

.field final synthetic val$responseResult:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;Landroid/os/Looper;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2$1;->this$0:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;

    iput-object p3, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2$1;->val$responseResult:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2$1;->val$responseResult:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method
