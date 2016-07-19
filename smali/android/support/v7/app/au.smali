.class final Landroid/support/v7/app/au;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/aj;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/aj;)V
    .locals 1

    .prologue
    .line 847
    iput-object p1, p0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    new-instance v0, Landroid/support/v7/app/av;

    invoke-direct {v0, p0}, Landroid/support/v7/app/av;-><init>(Landroid/support/v7/app/au;)V

    iput-object v0, p0, Landroid/support/v7/app/au;->b:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/aj;B)V
    .locals 0

    .prologue
    .line 847
    invoke-direct {p0, p1}, Landroid/support/v7/app/au;-><init>(Landroid/support/v7/app/aj;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 877
    if-eqz p3, :cond_0

    .line 878
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 879
    if-nez v0, :cond_1

    .line 880
    iget-object v0, p0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->i(Landroid/support/v7/app/aj;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->b(I)V

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    add-int/lit8 v0, v0, -0x64

    .line 883
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    invoke-static {v1}, Landroid/support/v7/app/aj;->d(Landroid/support/v7/app/aj;)Landroid/support/v7/media/t;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/t;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 884
    iget-object v1, p0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    invoke-static {v1}, Landroid/support/v7/app/aj;->d(Landroid/support/v7/app/aj;)Landroid/support/v7/media/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/media/t;->a(I)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->b(I)V

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->p(Landroid/support/v7/app/aj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->q(Landroid/support/v7/app/aj;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/au;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 865
    :goto_0
    return-void

    .line 863
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/app/aj;->c(Landroid/support/v7/app/aj;Z)Z

    goto :goto_0
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 872
    iget-object v0, p0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->q(Landroid/support/v7/app/aj;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/au;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 873
    return-void
.end method
