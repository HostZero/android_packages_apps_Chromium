.class final Landroid/support/v4/media/session/F;
.super Landroid/support/v4/media/session/e;
.source "MediaSessionCompat.java"


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/B;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/B;)V
    .locals 0

    .prologue
    .line 1550
    iput-object p1, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-direct {p0}, Landroid/support/v4/media/session/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/B;->a(Landroid/support/v4/media/session/B;II)V

    .line 1641
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 1670
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1671
    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1665
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1666
    return-void
.end method

.method public final a(Landroid/support/v4/media/RatingCompat;)V
    .locals 2

    .prologue
    .line 1710
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1711
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/a;)V
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->f(Landroid/support/v4/media/session/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    :try_start_0
    invoke-interface {p1}, Landroid/support/v4/media/session/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    :goto_0
    return-void

    .line 1579
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->g(Landroid/support/v4/media/session/B;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 1577
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1655
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1656
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 4

    .prologue
    .line 1553
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/16 v1, 0xf

    new-instance v2, Landroid/support/v4/media/session/E;

    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->a(Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3}, Landroid/support/v4/media/session/E;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1555
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->e(Landroid/support/v4/media/session/B;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 1559
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->e(Landroid/support/v4/media/session/B;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1561
    :goto_0
    if-eqz v0, :cond_0

    .line 1562
    iget-object v1, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v1}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1564
    :cond_0
    return v0

    .line 1559
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->h(Landroid/support/v4/media/session/B;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/B;->b(Landroid/support/v4/media/session/B;II)V

    .line 1646
    return-void
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 1705
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1706
    return-void
.end method

.method public final b(Landroid/support/v4/media/session/a;)V
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->g(Landroid/support/v4/media/session/B;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1585
    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1660
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1661
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1596
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->i(Landroid/support/v4/media/session/B;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1716
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1717
    return-void
.end method

.method public final d()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 1601
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->j(Landroid/support/v4/media/session/B;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1602
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    .line 2001
    const/4 v0, 0x0

    .line 1602
    monitor-exit v1

    return-object v0

    .line 1603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()J
    .locals 4

    .prologue
    .line 1609
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->j(Landroid/support/v4/media/session/B;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1610
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->e(Landroid/support/v4/media/session/B;)I

    move-result v0

    int-to-long v2, v0

    monitor-exit v1

    return-wide v2

    .line 1611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 7

    .prologue
    const/4 v3, 0x2

    .line 1621
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->j(Landroid/support/v4/media/session/B;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1622
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->b(Landroid/support/v4/media/session/B;)I

    move-result v1

    .line 1623
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->c(Landroid/support/v4/media/session/B;)I

    move-result v2

    .line 1624
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->a(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/VolumeProviderCompat;

    move-result-object v0

    .line 1625
    if-ne v1, v3, :cond_0

    .line 1626
    invoke-virtual {v0}, Landroid/support/v4/media/VolumeProviderCompat;->b()I

    move-result v3

    .line 1627
    invoke-virtual {v0}, Landroid/support/v4/media/VolumeProviderCompat;->c()I

    move-result v4

    .line 1628
    invoke-virtual {v0}, Landroid/support/v4/media/VolumeProviderCompat;->a()I

    move-result v5

    .line 1634
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    return-object v0

    .line 1631
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->k(Landroid/support/v4/media/session/B;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 1632
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->k(Landroid/support/v4/media/session/B;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    goto :goto_0

    .line 1634
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 1650
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/4 v1, 0x1

    .line 2812
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1651
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 1675
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/4 v1, 0x5

    .line 3812
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1676
    return-void
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 1680
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/4 v1, 0x6

    .line 4812
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1681
    return-void
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 1685
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/4 v1, 0x7

    .line 5812
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1686
    return-void
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 1690
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/16 v1, 0x8

    .line 6812
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1691
    return-void
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 1695
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/16 v1, 0x9

    .line 7812
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1696
    return-void
.end method

.method public final m()V
    .locals 3

    .prologue
    .line 1700
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->d(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/G;

    move-result-object v0

    const/16 v1, 0xa

    .line 8812
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/G;->a(ILjava/lang/Object;)V

    .line 1701
    return-void
.end method

.method public final n()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->l(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public final o()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->m(Landroid/support/v4/media/session/B;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 2

    .prologue
    .line 1731
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->j(Landroid/support/v4/media/session/B;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1732
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    .line 9001
    const/4 v0, 0x0

    .line 1732
    monitor-exit v1

    return-object v0

    .line 1733
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final q()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    .line 10001
    const/4 v0, 0x0

    .line 1738
    return-object v0
.end method

.method public final r()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1743
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    invoke-static {v0}, Landroid/support/v4/media/session/B;->j(Landroid/support/v4/media/session/B;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1744
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    .line 11001
    const/4 v0, 0x0

    .line 1744
    monitor-exit v1

    return-object v0

    .line 1745
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Landroid/support/v4/media/session/F;->a:Landroid/support/v4/media/session/B;

    .line 12001
    const/4 v0, 0x0

    .line 1751
    return v0
.end method
