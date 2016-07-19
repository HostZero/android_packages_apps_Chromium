.class Landroid/support/v7/media/ab;
.super Landroid/support/v7/media/X;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Landroid/support/v7/media/B;


# instance fields
.field private g:Landroid/support/v7/media/A;

.field private h:Landroid/support/v7/media/D;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/ag;)V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/X;-><init>(Landroid/content/Context;Landroid/support/v7/media/ag;)V

    .line 717
    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v7/media/Z;Landroid/support/v7/media/c;)V
    .locals 1

    .prologue
    .line 742
    invoke-super {p0, p1, p2}, Landroid/support/v7/media/X;->a(Landroid/support/v7/media/Z;Landroid/support/v7/media/c;)V

    .line 744
    iget-object v0, p1, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    .line 2039
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    .line 744
    if-nez v0, :cond_0

    .line 745
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/media/c;->a(Z)Landroid/support/v7/media/c;

    .line 748
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/media/ab;->a(Landroid/support/v7/media/Z;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/media/c;->b(Z)Landroid/support/v7/media/c;

    .line 752
    :cond_1
    iget-object v0, p1, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    .line 2043
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_2

    .line 755
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v7/media/c;->f(I)Landroid/support/v7/media/c;

    .line 757
    :cond_2
    return-void
.end method

.method protected a(Landroid/support/v7/media/Z;)Z
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Landroid/support/v7/media/ab;->h:Landroid/support/v7/media/D;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Landroid/support/v7/media/D;

    invoke-direct {v0}, Landroid/support/v7/media/D;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/ab;->h:Landroid/support/v7/media/D;

    .line 779
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/ab;->h:Landroid/support/v7/media/D;

    iget-object v1, p1, Landroid/support/v7/media/Z;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/D;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 761
    invoke-super {p0}, Landroid/support/v7/media/X;->b()V

    .line 763
    iget-object v0, p0, Landroid/support/v7/media/ab;->g:Landroid/support/v7/media/A;

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Landroid/support/v7/media/A;

    invoke-virtual {p0}, Landroid/support/v7/media/ab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/media/ab;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/A;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/ab;->g:Landroid/support/v7/media/A;

    .line 767
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/ab;->g:Landroid/support/v7/media/A;

    iget-boolean v0, p0, Landroid/support/v7/media/ab;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/media/ab;->c:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/media/A;->a(I)V

    .line 768
    return-void

    .line 767
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 772
    .line 3034
    new-instance v0, Landroid/support/v7/media/C;

    invoke-direct {v0, p0}, Landroid/support/v7/media/C;-><init>(Landroid/support/v7/media/B;)V

    .line 772
    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 721
    invoke-virtual {p0, p1}, Landroid/support/v7/media/ab;->g(Ljava/lang/Object;)I

    move-result v0

    .line 722
    if-ltz v0, :cond_0

    .line 723
    iget-object v1, p0, Landroid/support/v7/media/ab;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/Z;

    .line 1043
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    .line 726
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 728
    :goto_0
    iget-object v2, v0, Landroid/support/v7/media/Z;->c:Landroid/support/v7/media/b;

    invoke-virtual {v2}, Landroid/support/v7/media/b;->r()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 730
    new-instance v2, Landroid/support/v7/media/c;

    iget-object v3, v0, Landroid/support/v7/media/Z;->c:Landroid/support/v7/media/b;

    invoke-direct {v2, v3}, Landroid/support/v7/media/c;-><init>(Landroid/support/v7/media/b;)V

    invoke-virtual {v2, v1}, Landroid/support/v7/media/c;->f(I)Landroid/support/v7/media/c;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/c;->a()Landroid/support/v7/media/b;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/media/Z;->c:Landroid/support/v7/media/b;

    .line 734
    invoke-virtual {p0}, Landroid/support/v7/media/ab;->a()V

    .line 737
    :cond_0
    return-void

    .line 726
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method
