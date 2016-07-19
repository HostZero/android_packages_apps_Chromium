.class Lorg/chromium/media/MediaDrmBridge$EventListener;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 896
    const-class v0, Lorg/chromium/media/MediaDrmBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaDrmBridge$EventListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V
    .locals 0

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge$EventListener;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 6

    .prologue
    const/16 v5, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 900
    if-nez p2, :cond_1

    .line 901
    const-string/jumbo v0, "cr_media"

    const-string/jumbo v1, "EventListener: Null session."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    # invokes: Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z
    invoke-static {v0, p2}, Lorg/chromium/media/MediaDrmBridge;->access$900(Lorg/chromium/media/MediaDrmBridge;[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 905
    const-string/jumbo v0, "cr_media"

    const-string/jumbo v1, "EventListener: Invalid session %s"

    new-array v2, v3, [Ljava/lang/Object;

    # invokes: Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {p2}, Lorg/chromium/media/MediaDrmBridge;->access$1000([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 908
    :cond_2
    packed-switch p3, :pswitch_data_0

    .line 952
    const-string/jumbo v0, "cr_media"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid DRM event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 911
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    # getter for: Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z
    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1100(Lorg/chromium/media/MediaDrmBridge;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    # getter for: Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1200(Lorg/chromium/media/MediaDrmBridge;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 917
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    const/4 v2, 0x0

    # invokes: Lorg/chromium/media/MediaDrmBridge;->getKeyRequest([B[BLjava/lang/String;Ljava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    invoke-static {v1, p2, p5, v0, v2}, Lorg/chromium/media/MediaDrmBridge;->access$1300(Lorg/chromium/media/MediaDrmBridge;[B[BLjava/lang/String;Ljava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 923
    if-eqz v0, :cond_3

    .line 924
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    # invokes: Lorg/chromium/media/MediaDrmBridge;->onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V
    invoke-static {v1, p2, v0}, Lorg/chromium/media/MediaDrmBridge;->access$1500(Lorg/chromium/media/MediaDrmBridge;[BLandroid/media/MediaDrm$KeyRequest;)V

    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    const-string/jumbo v1, "cr_media"

    const-string/jumbo v2, "Device not provisioned"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    # invokes: Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V
    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$1400(Lorg/chromium/media/MediaDrmBridge;)V

    goto :goto_0

    .line 926
    :cond_3
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    const-string/jumbo v1, "MediaDrm EVENT_KEY_REQUIRED: Failed to generate request."

    # invokes: Lorg/chromium/media/MediaDrmBridge;->onLegacySessionError([BLjava/lang/String;)V
    invoke-static {v0, p2, v1}, Lorg/chromium/media/MediaDrmBridge;->access$1600(Lorg/chromium/media/MediaDrmBridge;[BLjava/lang/String;)V

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_4

    .line 929
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    const/4 v1, 0x4

    # invokes: Lorg/chromium/media/MediaDrmBridge;->getDummyKeysInfo(I)Ljava/util/List;
    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$1700(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    # invokes: Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([B[Ljava/lang/Object;Z)V
    invoke-static {v0, p2, v1, v4}, Lorg/chromium/media/MediaDrmBridge;->access$1800(Lorg/chromium/media/MediaDrmBridge;[B[Ljava/lang/Object;Z)V

    .line 934
    :cond_4
    const-string/jumbo v0, "cr_media"

    const-string/jumbo v1, "EventListener: getKeyRequest failed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 940
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    const-string/jumbo v1, "MediaDrm EVENT_KEY_EXPIRED."

    # invokes: Lorg/chromium/media/MediaDrmBridge;->onLegacySessionError([BLjava/lang/String;)V
    invoke-static {v0, p2, v1}, Lorg/chromium/media/MediaDrmBridge;->access$1600(Lorg/chromium/media/MediaDrmBridge;[BLjava/lang/String;)V

    .line 941
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_0

    .line 942
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$EventListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    # invokes: Lorg/chromium/media/MediaDrmBridge;->getDummyKeysInfo(I)Ljava/util/List;
    invoke-static {v3}, Lorg/chromium/media/MediaDrmBridge;->access$1700(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    # invokes: Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([B[Ljava/lang/Object;Z)V
    invoke-static {v0, p2, v1, v4}, Lorg/chromium/media/MediaDrmBridge;->access$1800(Lorg/chromium/media/MediaDrmBridge;[B[Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 949
    :pswitch_2
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge$EventListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
