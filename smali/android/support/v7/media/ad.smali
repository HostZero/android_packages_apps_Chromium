.class final Landroid/support/v7/media/ad;
.super Landroid/support/v7/media/W;
.source "SystemMediaRouteProvider.java"


# static fields
.field private static final a:Ljava/util/ArrayList;


# instance fields
.field private final b:Landroid/media/AudioManager;

.field private final c:Landroid/support/v7/media/af;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    const-string/jumbo v1, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    sput-object v1, Landroid/support/v7/media/ad;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/support/v7/media/W;-><init>(Landroid/content/Context;)V

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/ad;->d:I

    .line 121
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v7/media/ad;->b:Landroid/media/AudioManager;

    .line 122
    new-instance v0, Landroid/support/v7/media/af;

    invoke-direct {v0, p0}, Landroid/support/v7/media/af;-><init>(Landroid/support/v7/media/ad;)V

    iput-object v0, p0, Landroid/support/v7/media/ad;->c:Landroid/support/v7/media/af;

    .line 124
    iget-object v0, p0, Landroid/support/v7/media/ad;->c:Landroid/support/v7/media/af;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-direct {p0}, Landroid/support/v7/media/ad;->a()V

    .line 127
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/ad;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v7/media/ad;->b:Landroid/media/AudioManager;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 130
    invoke-virtual {p0}, Landroid/support/v7/media/ad;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    iget-object v1, p0, Landroid/support/v7/media/ad;->b:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 132
    iget-object v2, p0, Landroid/support/v7/media/ad;->b:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/media/ad;->d:I

    .line 133
    new-instance v2, Landroid/support/v7/media/c;

    const-string/jumbo v3, "DEFAULT_ROUTE"

    sget v4, Landroid/support/v7/mediarouter/R$string;->mr_system_route_name:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/support/v7/media/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v7/media/ad;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Landroid/support/v7/media/c;->a(Ljava/util/Collection;)Landroid/support/v7/media/c;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/media/c;->b(I)Landroid/support/v7/media/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/media/c;->a(I)Landroid/support/v7/media/c;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/media/c;->e(I)Landroid/support/v7/media/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/media/c;->d(I)Landroid/support/v7/media/c;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/ad;->d:I

    invoke-virtual {v0, v1}, Landroid/support/v7/media/c;->c(I)Landroid/support/v7/media/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/c;->a()Landroid/support/v7/media/b;

    move-result-object v0

    .line 143
    new-instance v1, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v1}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroid/support/v7/media/b;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Landroid/support/v7/media/ad;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 148
    return-void
.end method

.method static synthetic b(Landroid/support/v7/media/ad;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v7/media/ad;->a()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/media/ad;)I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/support/v7/media/ad;->d:I

    return v0
.end method


# virtual methods
.method public final onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 1

    .prologue
    .line 152
    const-string/jumbo v0, "DEFAULT_ROUTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Landroid/support/v7/media/ae;

    invoke-direct {v0, p0}, Landroid/support/v7/media/ae;-><init>(Landroid/support/v7/media/ad;)V

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
