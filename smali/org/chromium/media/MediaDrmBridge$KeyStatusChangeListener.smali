.class Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method private constructor <init>(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V
    .locals 0

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    return-void
.end method

.method private getKeysInfo(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .prologue
    .line 961
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 962
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDrm$KeyStatus;

    .line 963
    new-instance v3, Lorg/chromium/media/MediaDrmBridge$KeyStatus;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v4

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lorg/chromium/media/MediaDrmBridge$KeyStatus;-><init>([BILorg/chromium/media/MediaDrmBridge$1;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 965
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 2

    .prologue
    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "KeysStatusChange: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # invokes: Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {p2}, Lorg/chromium/media/MediaDrmBridge;->access$1000([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 973
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0, p3}, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;->getKeysInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    # invokes: Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([B[Ljava/lang/Object;Z)V
    invoke-static {v0, p2, v1, p4}, Lorg/chromium/media/MediaDrmBridge;->access$1800(Lorg/chromium/media/MediaDrmBridge;[B[Ljava/lang/Object;Z)V

    .line 974
    return-void
.end method
