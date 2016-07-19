.class Landroid/support/v7/media/X;
.super Landroid/support/v7/media/W;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Landroid/support/v7/media/u;
.implements Landroid/support/v7/media/y;


# static fields
.field private static final g:Ljava/util/ArrayList;

.field private static final h:Ljava/util/ArrayList;


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected final b:Ljava/lang/Object;

.field protected c:I

.field protected d:Z

.field protected e:Z

.field protected final f:Ljava/util/ArrayList;

.field private final i:Landroid/support/v7/media/ag;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/util/ArrayList;

.field private m:Landroid/support/v7/media/x;

.field private n:Landroid/support/v7/media/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    const-string/jumbo v1, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    sput-object v1, Landroid/support/v7/media/X;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    const-string/jumbo v1, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    sput-object v1, Landroid/support/v7/media/X;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/ag;)V
    .locals 3

    .prologue
    .line 249
    invoke-direct {p0, p1}, Landroid/support/v7/media/W;-><init>(Landroid/content/Context;)V

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/X;->l:Ljava/util/ArrayList;

    .line 250
    iput-object p2, p0, Landroid/support/v7/media/X;->i:Landroid/support/v7/media/ag;

    .line 1042
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    iput-object v0, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    .line 252
    invoke-virtual {p0}, Landroid/support/v7/media/X;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/X;->b:Ljava/lang/Object;

    .line 1641
    invoke-static {p0}, Landroid/support/v7/media/c;->a(Landroid/support/v7/media/y;)Ljava/lang/Object;

    move-result-object v0

    .line 253
    iput-object v0, p0, Landroid/support/v7/media/X;->j:Ljava/lang/Object;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 256
    iget-object v1, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_user_route_category_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v7/media/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/X;->k:Ljava/lang/Object;

    .line 259
    invoke-direct {p0}, Landroid/support/v7/media/X;->e()V

    .line 260
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 545
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 546
    iget-object v0, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/Z;

    iget-object v0, v0, Landroid/support/v7/media/Z;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 550
    :goto_1
    return v0

    .line 545
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/media/Z;)V
    .locals 3

    .prologue
    .line 571
    new-instance v0, Landroid/support/v7/media/c;

    iget-object v1, p1, Landroid/support/v7/media/Z;->b:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    invoke-direct {p0, v2}, Landroid/support/v7/media/X;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/media/X;->a(Landroid/support/v7/media/Z;Landroid/support/v7/media/c;)V

    .line 574
    invoke-virtual {v0}, Landroid/support/v7/media/c;->a()Landroid/support/v7/media/b;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/media/Z;->c:Landroid/support/v7/media/b;

    .line 575
    return-void
.end method

.method private e(Landroid/support/v7/media/MediaRouter$RouteInfo;)I
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Landroid/support/v7/media/X;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 555
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 556
    iget-object v0, p0, Landroid/support/v7/media/X;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/aa;

    iget-object v0, v0, Landroid/support/v7/media/aa;->a:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 560
    :goto_1
    return v0

    .line 555
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 309
    .line 310
    iget-object v0, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    .line 2047
    check-cast v0, Landroid/media/MediaRouter;

    .line 2048
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v3

    .line 2049
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 2050
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2051
    invoke-virtual {v0, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2050
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 311
    invoke-direct {p0, v1}, Landroid/support/v7/media/X;->f(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 312
    goto :goto_1

    .line 313
    :cond_1
    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p0}, Landroid/support/v7/media/X;->a()V

    .line 316
    :cond_2
    return-void
.end method

.method private f(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 319
    invoke-static {p1}, Landroid/support/v7/media/X;->i(Ljava/lang/Object;)Landroid/support/v7/media/aa;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Landroid/support/v7/media/X;->g(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_4

    .line 2334
    invoke-virtual {p0}, Landroid/support/v7/media/X;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v4

    .line 2335
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "DEFAULT_ROUTE"

    .line 2337
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/media/X;->a(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    .line 322
    :goto_2
    new-instance v1, Landroid/support/v7/media/Z;

    invoke-direct {v1, p1, v0}, Landroid/support/v7/media/Z;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, v1}, Landroid/support/v7/media/X;->a(Landroid/support/v7/media/Z;)V

    .line 324
    iget-object v0, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v4

    .line 327
    :goto_3
    return v0

    :cond_0
    move v0, v5

    .line 2334
    goto :goto_0

    .line 2335
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "ROUTE_%08x"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/support/v7/media/X;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 2341
    :goto_4
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%s_%d"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2342
    invoke-direct {p0, v3}, Landroid/support/v7/media/X;->a(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_3

    move-object v0, v3

    .line 2343
    goto :goto_2

    .line 2340
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v0, v5

    .line 327
    goto :goto_3
.end method

.method private static i(Ljava/lang/Object;)Landroid/support/v7/media/aa;
    .locals 2

    .prologue
    .line 564
    .line 4156
    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 565
    instance-of v1, v0, Landroid/support/v7/media/aa;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/media/aa;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/support/v7/media/X;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5116
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 523
    new-instance v2, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v2}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;-><init>()V

    .line 525
    iget-object v0, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 526
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 527
    iget-object v0, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/Z;

    iget-object v0, v0, Landroid/support/v7/media/Z;->c:Landroid/support/v7/media/b;

    invoke-virtual {v2, v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroid/support/v7/media/b;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    .line 526
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/X;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 531
    return-void
.end method

.method public final a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 450
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->x()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 451
    iget-object v0, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/X;->k:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 453
    new-instance v0, Landroid/support/v7/media/aa;

    invoke-direct {v0, p1, v1}, Landroid/support/v7/media/aa;-><init>(Landroid/support/v7/media/MediaRouter$RouteInfo;Ljava/lang/Object;)V

    .line 454
    invoke-static {v1, v0}, Landroid/support/v7/media/c;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    iget-object v2, p0, Landroid/support/v7/media/X;->j:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v7/media/c;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    invoke-virtual {p0, v0}, Landroid/support/v7/media/X;->a(Landroid/support/v7/media/aa;)V

    .line 457
    iget-object v2, p0, Landroid/support/v7/media/X;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    .line 4097
    check-cast v0, Landroid/media/MediaRouter;

    check-cast v1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 465
    invoke-virtual {p0, v0}, Landroid/support/v7/media/X;->g(Ljava/lang/Object;)I

    move-result v0

    .line 466
    if-ltz v0, :cond_0

    .line 467
    iget-object v1, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/Z;

    .line 468
    iget-object v0, v0, Landroid/support/v7/media/Z;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->v()V

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/media/Z;Landroid/support/v7/media/c;)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p1, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    .line 5124
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    .line 590
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 591
    sget-object v1, Landroid/support/v7/media/X;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroid/support/v7/media/c;->a(Ljava/util/Collection;)Landroid/support/v7/media/c;

    .line 593
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 594
    sget-object v0, Landroid/support/v7/media/X;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Landroid/support/v7/media/c;->a(Ljava/util/Collection;)Landroid/support/v7/media/c;

    .line 597
    :cond_1
    iget-object v0, p1, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    .line 5136
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v0

    .line 597
    invoke-virtual {p2, v0}, Landroid/support/v7/media/c;->a(I)Landroid/support/v7/media/c;

    .line 599
    iget-object v0, p1, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    .line 5140
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v0

    .line 599
    invoke-virtual {p2, v0}, Landroid/support/v7/media/c;->b(I)Landroid/support/v7/media/c;

    .line 601
    iget-object v0, p1, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    .line 5144
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    .line 601
    invoke-virtual {p2, v0}, Landroid/support/v7/media/c;->c(I)Landroid/support/v7/media/c;

    .line 603
    iget-object v0, p1, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    .line 5148
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    .line 603
    invoke-virtual {p2, v0}, Landroid/support/v7/media/c;->d(I)Landroid/support/v7/media/c;

    .line 605
    iget-object v0, p1, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    .line 5152
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v0

    .line 605
    invoke-virtual {p2, v0}, Landroid/support/v7/media/c;->e(I)Landroid/support/v7/media/c;

    .line 607
    return-void
.end method

.method protected a(Landroid/support/v7/media/aa;)V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p1, Landroid/support/v7/media/aa;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/aa;->a:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v1

    .line 5196
    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, p1, Landroid/support/v7/media/aa;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/aa;->a:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->m()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->b(Ljava/lang/Object;I)V

    .line 614
    iget-object v0, p1, Landroid/support/v7/media/aa;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/aa;->a:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->n()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->c(Ljava/lang/Object;I)V

    .line 616
    iget-object v0, p1, Landroid/support/v7/media/aa;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/aa;->a:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->q()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->d(Ljava/lang/Object;I)V

    .line 618
    iget-object v0, p1, Landroid/support/v7/media/aa;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/aa;->a:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->r()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->e(Ljava/lang/Object;I)V

    .line 620
    iget-object v0, p1, Landroid/support/v7/media/aa;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/aa;->a:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->p()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->f(Ljava/lang/Object;I)V

    .line 622
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-static {p1}, Landroid/support/v7/media/X;->i(Ljava/lang/Object;)Landroid/support/v7/media/aa;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_2

    .line 400
    iget-object v0, v0, Landroid/support/v7/media/aa;->a:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->v()V

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/media/X;->g(Ljava/lang/Object;)I

    move-result v0

    .line 405
    if-ltz v0, :cond_0

    .line 406
    iget-object v1, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/Z;

    .line 407
    iget-object v1, p0, Landroid/support/v7/media/X;->i:Landroid/support/v7/media/ag;

    iget-object v0, v0, Landroid/support/v7/media/Z;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/support/v7/media/ag;->b(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->v()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 434
    invoke-static {p1}, Landroid/support/v7/media/X;->i(Ljava/lang/Object;)Landroid/support/v7/media/aa;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_0

    .line 436
    iget-object v0, v0, Landroid/support/v7/media/aa;->a:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->b(I)V

    .line 438
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 625
    iget-boolean v0, p0, Landroid/support/v7/media/X;->e:Z

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/X;->e:Z

    .line 627
    iget-object v0, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/X;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 630
    :cond_0
    iget v0, p0, Landroid/support/v7/media/X;->c:I

    if-eqz v0, :cond_1

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/X;->e:Z

    .line 632
    iget-object v0, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    iget v2, p0, Landroid/support/v7/media/X;->c:I

    iget-object v1, p0, Landroid/support/v7/media/X;->b:Ljava/lang/Object;

    .line 6077
    check-cast v0, Landroid/media/MediaRouter;

    check-cast v1, Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 634
    :cond_1
    return-void
.end method

.method public final b(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 477
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->x()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 478
    invoke-direct {p0, p1}, Landroid/support/v7/media/X;->e(Landroid/support/v7/media/MediaRouter$RouteInfo;)I

    move-result v0

    .line 479
    if-ltz v0, :cond_0

    .line 480
    iget-object v1, p0, Landroid/support/v7/media/X;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/aa;

    .line 481
    iget-object v1, v0, Landroid/support/v7/media/aa;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v7/media/c;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 482
    iget-object v1, v0, Landroid/support/v7/media/aa;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v7/media/c;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 483
    iget-object v1, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    iget-object v2, v0, Landroid/support/v7/media/aa;->b:Ljava/lang/Object;

    move-object v0, v1

    .line 4102
    check-cast v0, Landroid/media/MediaRouter;

    move-object v1, v2

    check-cast v1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 486
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0, p1}, Landroid/support/v7/media/X;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/support/v7/media/X;->a()V

    .line 306
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 442
    invoke-static {p1}, Landroid/support/v7/media/X;->i(Ljava/lang/Object;)Landroid/support/v7/media/aa;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    .line 444
    iget-object v0, v0, Landroid/support/v7/media/aa;->a:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->c(I)V

    .line 446
    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 637
    .line 6107
    new-instance v0, Landroid/support/v7/media/v;

    invoke-direct {v0, p0}, Landroid/support/v7/media/v;-><init>(Landroid/support/v7/media/u;)V

    .line 637
    return-object v0
.end method

.method public final c(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->x()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 491
    invoke-direct {p0, p1}, Landroid/support/v7/media/X;->e(Landroid/support/v7/media/MediaRouter$RouteInfo;)I

    move-result v0

    .line 492
    if-ltz v0, :cond_0

    .line 493
    iget-object v1, p0, Landroid/support/v7/media/X;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/aa;

    .line 494
    invoke-virtual {p0, v0}, Landroid/support/v7/media/X;->a(Landroid/support/v7/media/aa;)V

    .line 497
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 350
    invoke-static {p1}, Landroid/support/v7/media/X;->i(Ljava/lang/Object;)Landroid/support/v7/media/aa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Landroid/support/v7/media/X;->g(Ljava/lang/Object;)I

    move-result v0

    .line 352
    if-ltz v0, :cond_0

    .line 353
    iget-object v1, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 354
    invoke-virtual {p0}, Landroid/support/v7/media/X;->a()V

    .line 357
    :cond_0
    return-void
.end method

.method protected d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Landroid/support/v7/media/X;->n:Landroid/support/v7/media/w;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Landroid/support/v7/media/w;

    invoke-direct {v0}, Landroid/support/v7/media/w;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/X;->n:Landroid/support/v7/media/w;

    .line 656
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/X;->n:Landroid/support/v7/media/w;

    iget-object v1, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->x()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 508
    invoke-direct {p0, p1}, Landroid/support/v7/media/X;->e(Landroid/support/v7/media/MediaRouter$RouteInfo;)I

    move-result v0

    .line 509
    if-ltz v0, :cond_0

    .line 510
    iget-object v1, p0, Landroid/support/v7/media/X;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/aa;

    .line 511
    iget-object v0, v0, Landroid/support/v7/media/aa;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/X;->h(Ljava/lang/Object;)V

    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->w()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/media/X;->a(Ljava/lang/String;)I

    move-result v0

    .line 515
    if-ltz v0, :cond_0

    .line 516
    iget-object v1, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/Z;

    .line 517
    iget-object v0, v0, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/X;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 361
    invoke-static {p1}, Landroid/support/v7/media/X;->i(Ljava/lang/Object;)Landroid/support/v7/media/aa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Landroid/support/v7/media/X;->g(Ljava/lang/Object;)I

    move-result v0

    .line 363
    if-ltz v0, :cond_0

    .line 364
    iget-object v1, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/Z;

    .line 365
    invoke-direct {p0, v0}, Landroid/support/v7/media/X;->a(Landroid/support/v7/media/Z;)V

    .line 366
    invoke-virtual {p0}, Landroid/support/v7/media/X;->a()V

    .line 369
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 373
    invoke-static {p1}, Landroid/support/v7/media/X;->i(Ljava/lang/Object;)Landroid/support/v7/media/aa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0, p1}, Landroid/support/v7/media/X;->g(Ljava/lang/Object;)I

    move-result v0

    .line 375
    if-ltz v0, :cond_0

    .line 376
    iget-object v1, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/Z;

    .line 3144
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    .line 378
    iget-object v2, v0, Landroid/support/v7/media/Z;->c:Landroid/support/v7/media/b;

    invoke-virtual {v2}, Landroid/support/v7/media/b;->o()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 379
    new-instance v2, Landroid/support/v7/media/c;

    iget-object v3, v0, Landroid/support/v7/media/Z;->c:Landroid/support/v7/media/b;

    invoke-direct {v2, v3}, Landroid/support/v7/media/c;-><init>(Landroid/support/v7/media/b;)V

    invoke-virtual {v2, v1}, Landroid/support/v7/media/c;->c(I)Landroid/support/v7/media/c;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/c;->a()Landroid/support/v7/media/b;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/media/Z;->c:Landroid/support/v7/media/b;

    .line 383
    invoke-virtual {p0}, Landroid/support/v7/media/X;->a()V

    .line 387
    :cond_0
    return-void
.end method

.method protected final g(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 534
    iget-object v0, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 535
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 536
    iget-object v0, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/Z;

    iget-object v0, v0, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 540
    :goto_1
    return v0

    .line 535
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected h(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 645
    iget-object v0, p0, Landroid/support/v7/media/X;->m:Landroid/support/v7/media/x;

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Landroid/support/v7/media/x;

    invoke-direct {v0}, Landroid/support/v7/media/x;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/X;->m:Landroid/support/v7/media/x;

    .line 648
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/X;->m:Landroid/support/v7/media/x;

    iget-object v1, p0, Landroid/support/v7/media/X;->a:Ljava/lang/Object;

    const v2, 0x800003

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/media/x;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 650
    return-void
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0, p1}, Landroid/support/v7/media/X;->a(Ljava/lang/String;)I

    move-result v0

    .line 265
    if-ltz v0, :cond_0

    .line 266
    iget-object v1, p0, Landroid/support/v7/media/X;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/Z;

    .line 267
    new-instance v1, Landroid/support/v7/media/Y;

    iget-object v0, v0, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/media/Y;-><init>(Landroid/support/v7/media/X;Ljava/lang/Object;)V

    move-object v0, v1

    .line 269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDiscoveryRequestChanged(Landroid/support/v7/media/d;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 274
    .line 276
    if-eqz p1, :cond_5

    .line 277
    invoke-virtual {p1}, Landroid/support/v7/media/d;->a()Landroid/support/v7/media/e;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/support/v7/media/e;->a()Ljava/util/List;

    move-result-object v3

    .line 279
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    .line 280
    :goto_0
    if-ge v2, v4, :cond_2

    .line 281
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    const-string/jumbo v5, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    or-int/lit8 v0, v1, 0x1

    .line 280
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 284
    :cond_0
    const-string/jumbo v5, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    or-int/lit8 v0, v1, 0x2

    goto :goto_1

    .line 287
    :cond_1
    const/high16 v0, 0x800000

    or-int/2addr v0, v1

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/media/d;->b()Z

    move-result v0

    .line 293
    :goto_2
    iget v2, p0, Landroid/support/v7/media/X;->c:I

    if-ne v2, v1, :cond_3

    iget-boolean v2, p0, Landroid/support/v7/media/X;->d:Z

    if-eq v2, v0, :cond_4

    .line 294
    :cond_3
    iput v1, p0, Landroid/support/v7/media/X;->c:I

    .line 295
    iput-boolean v0, p0, Landroid/support/v7/media/X;->d:Z

    .line 296
    invoke-virtual {p0}, Landroid/support/v7/media/X;->b()V

    .line 297
    invoke-direct {p0}, Landroid/support/v7/media/X;->e()V

    .line 299
    :cond_4
    return-void

    :cond_5
    move v1, v0

    goto :goto_2
.end method
