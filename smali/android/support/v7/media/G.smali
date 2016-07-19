.class final Landroid/support/v7/media/G;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic a:Landroid/support/v7/media/F;

.field private final b:Landroid/os/Messenger;

.field private final c:Landroid/support/v7/media/L;

.field private final d:Landroid/os/Messenger;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/F;Landroid/os/Messenger;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 399
    iput-object p1, p0, Landroid/support/v7/media/G;->a:Landroid/support/v7/media/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput v0, p0, Landroid/support/v7/media/G;->e:I

    .line 392
    iput v0, p0, Landroid/support/v7/media/G;->f:I

    .line 396
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    .line 400
    iput-object p2, p0, Landroid/support/v7/media/G;->b:Landroid/os/Messenger;

    .line 401
    new-instance v0, Landroid/support/v7/media/L;

    invoke-direct {v0, p0}, Landroid/support/v7/media/L;-><init>(Landroid/support/v7/media/G;)V

    iput-object v0, p0, Landroid/support/v7/media/G;->c:Landroid/support/v7/media/L;

    .line 402
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v7/media/G;->c:Landroid/support/v7/media/L;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/G;->d:Landroid/os/Messenger;

    .line 403
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/G;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    .line 1437
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1438
    iget-object v0, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/i;

    invoke-virtual {v0, v2, v2}, Landroid/support/v7/media/i;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1437
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1440
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 386
    return-void
.end method

.method private a(IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    .line 573
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 574
    iput p1, v0, Landroid/os/Message;->what:I

    .line 575
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 576
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 577
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 578
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 579
    iget-object v1, p0, Landroid/support/v7/media/G;->d:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 581
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/media/G;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    const/4 v0, 0x1

    .line 590
    :goto_0
    return v0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 587
    const-string/jumbo v1, "MediaRouteProviderProxy"

    const-string/jumbo v2, "Could not send message to service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 589
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 515
    iget v3, p0, Landroid/support/v7/media/G;->f:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Landroid/support/v7/media/G;->f:I

    .line 516
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 517
    const-string/jumbo v0, "routeId"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v1, 0x3

    iget v2, p0, Landroid/support/v7/media/G;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/G;->e:I

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/G;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 520
    return v3
.end method

.method public final a(II)V
    .locals 6

    .prologue
    .line 534
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 535
    const-string/jumbo v0, "unselectReason"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 536
    const/4 v1, 0x6

    iget v2, p0, Landroid/support/v7/media/G;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/G;->e:I

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/G;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 538
    return-void
.end method

.method public final a(Landroid/support/v7/media/d;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 568
    const/16 v1, 0xa

    iget v2, p0, Landroid/support/v7/media/G;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/G;->e:I

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/d;->d()Landroid/os/Bundle;

    move-result-object v4

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/G;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 570
    return-void

    :cond_0
    move-object v4, v5

    .line 568
    goto :goto_0
.end method

.method public final a()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 406
    iget v0, p0, Landroid/support/v7/media/G;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/support/v7/media/G;->e:I

    iput v0, p0, Landroid/support/v7/media/G;->h:I

    .line 407
    iget v2, p0, Landroid/support/v7/media/G;->h:I

    move-object v0, p0

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/G;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v6

    .line 419
    :goto_0
    return v1

    .line 414
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/G;->b:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/media/G;->binderDied()V

    move v1, v6

    .line 419
    goto :goto_0
.end method

.method public final a(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 444
    iget v0, p0, Landroid/support/v7/media/G;->h:I

    if-ne p1, v0, :cond_0

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/media/G;->h:I

    .line 446
    iget-object v0, p0, Landroid/support/v7/media/G;->a:Landroid/support/v7/media/F;

    const-string/jumbo v1, "Registation failed"

    invoke-static {v0, p0, v1}, Landroid/support/v7/media/F;->a(Landroid/support/v7/media/F;Landroid/support/v7/media/G;Ljava/lang/String;)V

    .line 448
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/i;

    .line 449
    if-eqz v0, :cond_1

    .line 450
    iget-object v1, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 451
    invoke-virtual {v0, v2, v2}, Landroid/support/v7/media/i;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 453
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final a(IILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 462
    iget v1, p0, Landroid/support/v7/media/G;->g:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v7/media/G;->h:I

    if-ne p1, v1, :cond_0

    if-lez p2, :cond_0

    .line 465
    iput v0, p0, Landroid/support/v7/media/G;->h:I

    .line 466
    iput p2, p0, Landroid/support/v7/media/G;->g:I

    .line 467
    iget-object v0, p0, Landroid/support/v7/media/G;->a:Landroid/support/v7/media/F;

    invoke-static {p3}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/support/v7/media/F;->a(Landroid/support/v7/media/F;Landroid/support/v7/media/G;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 469
    iget-object v0, p0, Landroid/support/v7/media/G;->a:Landroid/support/v7/media/F;

    invoke-static {v0, p0}, Landroid/support/v7/media/F;->a(Landroid/support/v7/media/F;Landroid/support/v7/media/G;)V

    .line 470
    const/4 v0, 0x1

    .line 472
    :cond_0
    return v0
.end method

.method public final a(ILandroid/content/Intent;Landroid/support/v7/media/i;)Z
    .locals 6

    .prologue
    .line 556
    iget v2, p0, Landroid/support/v7/media/G;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/G;->e:I

    .line 557
    const/16 v1, 0x9

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/G;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    if-eqz p3, :cond_0

    .line 560
    iget-object v0, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 562
    :cond_0
    const/4 v0, 0x1

    .line 564
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/i;

    .line 486
    if-eqz v0, :cond_0

    .line 487
    iget-object v1, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 488
    invoke-virtual {v0, p2}, Landroid/support/v7/media/i;->onResult(Landroid/os/Bundle;)V

    .line 489
    const/4 v0, 0x1

    .line 491
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/i;

    .line 496
    if-eqz v0, :cond_0

    .line 497
    iget-object v1, p0, Landroid/support/v7/media/G;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 498
    invoke-virtual {v0, p2, p3}, Landroid/support/v7/media/i;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 499
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Landroid/support/v7/media/G;->g:I

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Landroid/support/v7/media/G;->a:Landroid/support/v7/media/F;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/support/v7/media/F;->a(Landroid/support/v7/media/F;Landroid/support/v7/media/G;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 479
    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 423
    const/4 v1, 0x2

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/G;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 424
    iget-object v0, p0, Landroid/support/v7/media/G;->c:Landroid/support/v7/media/L;

    invoke-virtual {v0}, Landroid/support/v7/media/L;->a()V

    .line 425
    iget-object v0, p0, Landroid/support/v7/media/G;->b:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 427
    iget-object v0, p0, Landroid/support/v7/media/G;->a:Landroid/support/v7/media/F;

    invoke-static {v0}, Landroid/support/v7/media/F;->a(Landroid/support/v7/media/F;)Landroid/support/v7/media/K;

    move-result-object v0

    new-instance v1, Landroid/support/v7/media/H;

    invoke-direct {v1, p0}, Landroid/support/v7/media/H;-><init>(Landroid/support/v7/media/G;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/K;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method public final b(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 524
    const/4 v1, 0x4

    iget v2, p0, Landroid/support/v7/media/G;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/G;->e:I

    move-object v0, p0

    move v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/G;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 526
    return-void
.end method

.method public final b(II)V
    .locals 6

    .prologue
    .line 541
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 542
    const-string/jumbo v0, "volume"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    const/4 v1, 0x7

    iget v2, p0, Landroid/support/v7/media/G;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/G;->e:I

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/G;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 545
    return-void
.end method

.method public final binderDied()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Landroid/support/v7/media/G;->a:Landroid/support/v7/media/F;

    invoke-static {v0}, Landroid/support/v7/media/F;->a(Landroid/support/v7/media/F;)Landroid/support/v7/media/K;

    move-result-object v0

    new-instance v1, Landroid/support/v7/media/I;

    invoke-direct {v1, p0}, Landroid/support/v7/media/I;-><init>(Landroid/support/v7/media/G;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/K;->post(Ljava/lang/Runnable;)Z

    .line 512
    return-void
.end method

.method public final c(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 529
    const/4 v1, 0x5

    iget v2, p0, Landroid/support/v7/media/G;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/G;->e:I

    move-object v0, p0

    move v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/G;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 531
    return-void
.end method

.method public final c(II)V
    .locals 6

    .prologue
    .line 548
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 549
    const-string/jumbo v0, "volume"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    const/16 v1, 0x8

    iget v2, p0, Landroid/support/v7/media/G;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/G;->e:I

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/G;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 552
    return-void
.end method
