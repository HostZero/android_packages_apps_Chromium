.class public abstract Landroid/support/v7/media/MediaRouteProviderService;
.super Landroid/app/Service;
.source "MediaRouteProviderService.java"


# static fields
.field private static final DEBUG:Z

.field private static final PRIVATE_MSG_CLIENT_DIED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaRouteProviderService"

.field private static final TAG:Ljava/lang/String; = "MediaRouteProviderSrv"


# instance fields
.field private final mClients:Ljava/util/ArrayList;

.field private mCompositeDiscoveryRequest:Landroid/support/v7/media/d;

.field private final mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

.field private mProvider:Landroid/support/v7/media/MediaRouteProvider;

.field private final mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

.field private final mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

.field private final mReceiveMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "MediaRouteProviderSrv"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    .line 86
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveMessenger:Landroid/os/Messenger;

    .line 87
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$1;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    .line 88
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$1;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    .line 89
    return-void
.end method

.method static synthetic access$1000(Landroid/os/Messenger;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/os/Messenger;I)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericFailure(Landroid/os/Messenger;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onRegisterClient(Landroid/os/Messenger;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;I)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->onUnregisterClient(Landroid/os/Messenger;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;IILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onReleaseRouteController(Landroid/os/Messenger;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onSelectRoute(Landroid/os/Messenger;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onUnselectRoute(Landroid/os/Messenger;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onSetRouteVolume(Landroid/os/Messenger;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onUpdateRouteVolume(Landroid/os/Messenger;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;ILandroid/support/v7/media/d;)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onSetDiscoveryRequest(Landroid/os/Messenger;ILandroid/support/v7/media/d;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 56
    invoke-static/range {p0 .. p5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->onBinderDied(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->sendDescriptorChanged(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v7/media/MediaRouteProviderService;)Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/media/MediaRouteProviderService;)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProviderService;->updateCompositeDiscoveryRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/support/v7/media/MediaRouteProviderService;)Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    return-object v0
.end method

.method private findClient(Landroid/os/Messenger;)I
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 420
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 421
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 422
    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->hasMessenger(Landroid/os/Messenger;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 426
    :goto_1
    return v0

    .line 420
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .locals 2

    .prologue
    .line 414
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    .line 415
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getClientId(Landroid/os/Messenger;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Client connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onBinderDied(Landroid/os/Messenger;)V
    .locals 4

    .prologue
    .line 175
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    .line 176
    if-ltz v0, :cond_1

    .line 177
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 178
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 179
    const-string/jumbo v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Binder died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->dispose()V

    .line 183
    :cond_1
    return-void
.end method

.method private onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 187
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, p4, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->createRouteController(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 191
    const-string/jumbo v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": Route controller created, controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", routeId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 195
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRegisterClient(Landroid/os/Messenger;II)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 138
    if-lez p3, :cond_3

    .line 139
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    .line 140
    if-gez v0, :cond_3

    .line 141
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    invoke-direct {v0, p0, p1, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;I)V

    .line 142
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->register()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 145
    const-string/jumbo v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": Registered, version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    if-eqz p2, :cond_1

    .line 148
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v0

    .line 149
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_0
    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 157
    :cond_1
    :goto_1
    return v3

    :cond_2
    move-object v4, v5

    .line 149
    goto :goto_0

    .line 157
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onReleaseRouteController(Landroid/os/Messenger;II)Z
    .locals 3

    .prologue
    .line 203
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->releaseRouteController(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 207
    const-string/jumbo v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": Route controller released, controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 211
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z
    .locals 8

    .prologue
    .line 295
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v2

    .line 296
    if-eqz v2, :cond_2

    .line 297
    invoke-virtual {v2, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v7

    .line 299
    if-eqz v7, :cond_2

    .line 300
    const/4 v0, 0x0

    .line 301
    if-eqz p2, :cond_0

    .line 302
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$1;

    move-object v1, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/MediaRouteProviderService$1;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;ILandroid/content/Intent;Landroid/os/Messenger;I)V

    .line 339
    :cond_0
    invoke-virtual {v7, p4, v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 341
    const-string/jumbo v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Route control request delivered, controllerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSelectRoute(Landroid/os/Messenger;II)Z
    .locals 3

    .prologue
    .line 219
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 225
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 226
    const-string/jumbo v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": Route selected, controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 230
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSetDiscoveryRequest(Landroid/os/Messenger;ILandroid/support/v7/media/d;)Z
    .locals 4

    .prologue
    .line 353
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->setDiscoveryRequest(Landroid/support/v7/media/d;)Z

    move-result v1

    .line 356
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 357
    const-string/jumbo v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": Set discovery request, request="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", actuallyChanged="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", compositeDiscoveryRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 362
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSetRouteVolume(Landroid/os/Messenger;III)Z
    .locals 3

    .prologue
    .line 257
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 263
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 264
    const-string/jumbo v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": Route volume changed, controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", volume="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 268
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onUnregisterClient(Landroid/os/Messenger;I)Z
    .locals 4

    .prologue
    .line 161
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    .line 162
    if-ltz v0, :cond_1

    .line 163
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 164
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 165
    const-string/jumbo v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Unregistered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->dispose()V

    .line 168
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onUnselectRoute(Landroid/os/Messenger;III)Z
    .locals 3

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 244
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 245
    const-string/jumbo v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": Route unselected, controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 249
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onUpdateRouteVolume(Landroid/os/Messenger;III)Z
    .locals 3

    .prologue
    .line 276
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 282
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 283
    const-string/jumbo v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": Route volume updated, controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", delta="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 287
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendDescriptorChanged(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 368
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 369
    :goto_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v2

    .line 370
    :goto_1
    if-ge v7, v8, :cond_2

    .line 371
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 372
    iget-object v0, v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->mMessenger:Landroid/os/Messenger;

    const/4 v1, 0x5

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 374
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 375
    const-string/jumbo v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": Sent descriptor change event, descriptor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 368
    goto :goto_0

    .line 378
    :cond_2
    return-void
.end method

.method private static sendGenericFailure(Landroid/os/Messenger;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 430
    if-eqz p1, :cond_0

    move-object v0, p0

    move v2, p1

    move v3, v1

    move-object v5, v4

    .line 431
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 433
    :cond_0
    return-void
.end method

.method private static sendGenericSuccess(Landroid/os/Messenger;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 436
    if-eqz p1, :cond_0

    .line 437
    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 439
    :cond_0
    return-void
.end method

.method private static sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 443
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 444
    iput p1, v0, Landroid/os/Message;->what:I

    .line 445
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 446
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 447
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 450
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    const-string/jumbo v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not send message to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 455
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private updateCompositeDiscoveryRequest()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 381
    .line 384
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v5

    move v1, v5

    move-object v3, v2

    .line 385
    :goto_0
    if-ge v6, v7, :cond_2

    .line 386
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    iget-object v4, v0, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->mDiscoveryRequest:Landroid/support/v7/media/d;

    .line 387
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/support/v7/media/d;->a()Landroid/support/v7/media/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/media/d;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 389
    :cond_0
    invoke-virtual {v4}, Landroid/support/v7/media/d;->b()Z

    move-result v0

    or-int/2addr v0, v1

    .line 390
    if-nez v3, :cond_1

    move-object v1, v2

    move-object v2, v4

    .line 385
    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_0

    .line 393
    :cond_1
    if-nez v2, :cond_6

    .line 394
    new-instance v1, Landroid/support/v7/media/f;

    invoke-virtual {v3}, Landroid/support/v7/media/d;->a()Landroid/support/v7/media/e;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/media/f;-><init>(Landroid/support/v7/media/e;)V

    .line 396
    :goto_2
    invoke-virtual {v4}, Landroid/support/v7/media/d;->a()Landroid/support/v7/media/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/media/f;->a(Landroid/support/v7/media/e;)Landroid/support/v7/media/f;

    move-object v2, v3

    goto :goto_1

    .line 400
    :cond_2
    if-eqz v2, :cond_3

    .line 401
    new-instance v3, Landroid/support/v7/media/d;

    invoke-virtual {v2}, Landroid/support/v7/media/f;->a()Landroid/support/v7/media/e;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Landroid/support/v7/media/d;-><init>(Landroid/support/v7/media/e;Z)V

    .line 403
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/d;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/d;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 406
    :cond_4
    iput-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/d;

    .line 407
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/d;)V

    .line 408
    const/4 v0, 0x1

    .line 410
    :goto_3
    return v0

    :cond_5
    move v0, v5

    goto :goto_3

    :cond_6
    move-object v1, v2

    goto :goto_2

    :cond_7
    move v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public getMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.media.MediaRouteProviderService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->onCreateMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".  Service package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    .line 127
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 130
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onCreateMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;
.end method
