.class public final Landroid/support/v7/media/MediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# static fields
.field static a:Landroid/support/v7/media/j;

.field private static final d:Z


# instance fields
.field final b:Landroid/content/Context;

.field final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-string/jumbo v0, "MediaRouter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/MediaRouter;->d:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter;->c:Ljava/util/ArrayList;

    .line 223
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter;->b:Landroid/content/Context;

    .line 224
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;
    .locals 2

    .prologue
    .line 244
    if-nez p0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 249
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    if-nez v0, :cond_1

    .line 250
    new-instance v0, Landroid/support/v7/media/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/media/j;-><init>(Landroid/content/Context;)V

    .line 251
    sput-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0}, Landroid/support/v7/media/j;->a()V

    .line 253
    :cond_1
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/j;->a(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/List;
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 262
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0}, Landroid/support/v7/media/j;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 3

    .prologue
    .line 736
    sget-boolean v0, Landroid/support/v7/media/MediaRouter;->d:Z

    if-eqz v0, :cond_0

    .line 737
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addMediaSessionCompat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/j;->a(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 740
    return-void
.end method

.method public static a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 375
    if-nez p0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 380
    sget-boolean v0, Landroid/support/v7/media/MediaRouter;->d:Z

    if-eqz v0, :cond_1

    .line 381
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "selectRoute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 384
    return-void
.end method

.method public static a(Landroid/support/v7/media/e;I)Z
    .locals 2

    .prologue
    .line 432
    if-nez p0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 437
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/e;I)Z

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 758
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/media/g;)I
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 615
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 616
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/h;

    iget-object v0, v0, Landroid/support/v7/media/h;->b:Landroid/support/v7/media/g;

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 620
    :goto_1
    return v0

    .line 615
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static b()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 285
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0}, Landroid/support/v7/media/j;->d()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static c()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 336
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0}, Landroid/support/v7/media/j;->e()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static d()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 743
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0}, Landroid/support/v7/media/j;->g()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method static e()V
    .locals 2

    .prologue
    .line 751
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 752
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The media router service must only be accessed on the application\'s main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_0
    return-void
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Landroid/support/v7/media/MediaRouter;->d:Z

    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 400
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported reason to unselect route"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_1
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 406
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->b()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 407
    return-void
.end method

.method public final a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;)V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;I)V

    .line 455
    return-void
.end method

.method public final a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    if-nez p2, :cond_1

    .line 556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 560
    sget-boolean v0, Landroid/support/v7/media/MediaRouter;->d:Z

    if-eqz v0, :cond_2

    .line 561
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addCallback: selector="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", callback="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", flags="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/v7/media/MediaRouter;->b(Landroid/support/v7/media/g;)I

    move-result v0

    .line 567
    if-gez v0, :cond_5

    .line 568
    new-instance v0, Landroid/support/v7/media/h;

    invoke-direct {v0, p0, p2}, Landroid/support/v7/media/h;-><init>(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/g;)V

    .line 569
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :goto_0
    const/4 v1, 0x0

    .line 574
    iget v3, v0, Landroid/support/v7/media/h;->d:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p3

    if-eqz v3, :cond_3

    .line 575
    iget v1, v0, Landroid/support/v7/media/h;->d:I

    or-int/2addr v1, p3

    iput v1, v0, Landroid/support/v7/media/h;->d:I

    move v1, v2

    .line 578
    :cond_3
    iget-object v3, v0, Landroid/support/v7/media/h;->c:Landroid/support/v7/media/e;

    invoke-virtual {v3, p1}, Landroid/support/v7/media/e;->a(Landroid/support/v7/media/e;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 579
    new-instance v1, Landroid/support/v7/media/f;

    iget-object v3, v0, Landroid/support/v7/media/h;->c:Landroid/support/v7/media/e;

    invoke-direct {v1, v3}, Landroid/support/v7/media/f;-><init>(Landroid/support/v7/media/e;)V

    invoke-virtual {v1, p1}, Landroid/support/v7/media/f;->a(Landroid/support/v7/media/e;)Landroid/support/v7/media/f;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/f;->a()Landroid/support/v7/media/e;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/media/h;->c:Landroid/support/v7/media/e;

    .line 584
    :goto_1
    if-eqz v2, :cond_4

    .line 585
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0}, Landroid/support/v7/media/j;->f()V

    .line 587
    :cond_4
    return-void

    .line 571
    :cond_5
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/h;

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/media/g;)V
    .locals 3

    .prologue
    .line 597
    if-nez p1, :cond_0

    .line 598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->e()V

    .line 602
    sget-boolean v0, Landroid/support/v7/media/MediaRouter;->d:Z

    if-eqz v0, :cond_1

    .line 603
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeCallback: callback="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter;->b(Landroid/support/v7/media/g;)I

    move-result v0

    .line 607
    if-ltz v0, :cond_2

    .line 608
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 609
    sget-object v0, Landroid/support/v7/media/MediaRouter;->a:Landroid/support/v7/media/j;

    invoke-virtual {v0}, Landroid/support/v7/media/j;->f()V

    .line 611
    :cond_2
    return-void
.end method
