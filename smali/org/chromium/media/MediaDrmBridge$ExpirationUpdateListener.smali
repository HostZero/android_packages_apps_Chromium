.class Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Landroid/media/MediaDrm$OnExpirationUpdateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method private constructor <init>(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V
    .locals 0

    .prologue
    .line 978
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    return-void
.end method


# virtual methods
.method public onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V
    .locals 3

    .prologue
    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ExpirationUpdate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # invokes: Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;
    invoke-static {p2}, Lorg/chromium/media/MediaDrmBridge;->access$1000([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 982
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$ExpirationUpdateListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    # invokes: Lorg/chromium/media/MediaDrmBridge;->onSessionExpirationUpdate([BJ)V
    invoke-static {v0, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->access$1900(Lorg/chromium/media/MediaDrmBridge;[BJ)V

    .line 983
    return-void
.end method
