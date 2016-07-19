.class final Landroid/support/v7/app/aw;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteControllerDialog.java"


# instance fields
.field private a:F

.field private synthetic b:Landroid/support/v7/app/aj;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/aj;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 894
    iput-object p1, p0, Landroid/support/v7/app/aw;->b:Landroid/support/v7/app/aj;

    .line 895
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 896
    invoke-static {p2}, Landroid/support/v7/app/c;->c(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/app/aw;->a:F

    .line 897
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v3, 0x0

    .line 901
    .line 902
    if-nez p2, :cond_2

    .line 903
    iget-object v0, p0, Landroid/support/v7/app/aw;->b:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->c(Landroid/support/v7/app/aj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$layout;->mr_controller_volume_item:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 909
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/app/aw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 910
    if-eqz v0, :cond_1

    .line 911
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->h()Z

    move-result v4

    .line 913
    sget v1, Landroid/support/v7/mediarouter/R$id;->mr_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 914
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 915
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    sget v1, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/MediaRouteVolumeSlider;

    .line 919
    iget-object v2, p0, Landroid/support/v7/app/aw;->b:Landroid/support/v7/app/aj;

    invoke-static {v2}, Landroid/support/v7/app/aj;->c(Landroid/support/v7/app/aj;)Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Landroid/support/v7/app/aw;->b:Landroid/support/v7/app/aj;

    invoke-static {v5}, Landroid/support/v7/app/aj;->b(Landroid/support/v7/app/aj;)Landroid/widget/ListView;

    move-result-object v5

    invoke-static {v2, v1, v5}, Landroid/support/v7/app/c;->a(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 921
    add-int/lit8 v2, p1, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setTag(Ljava/lang/Object;)V

    .line 922
    if-nez v4, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteVolumeSlider;->a(Z)V

    .line 923
    invoke-virtual {v1, v4}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    .line 924
    if-eqz v4, :cond_0

    .line 925
    iget-object v2, p0, Landroid/support/v7/app/aw;->b:Landroid/support/v7/app/aj;

    invoke-static {v2, v0}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 926
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 927
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->q()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 928
    iget-object v0, p0, Landroid/support/v7/app/aw;->b:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->r(Landroid/support/v7/app/aj;)Landroid/support/v7/app/au;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 936
    :cond_0
    :goto_2
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 938
    if-eqz v4, :cond_5

    const/16 v1, 0xff

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 940
    :cond_1
    return-object p2

    .line 906
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/aw;->b:Landroid/support/v7/app/aj;

    invoke-static {v0, p2}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/app/aj;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 922
    goto :goto_1

    .line 930
    :cond_4
    invoke-virtual {v1, v6}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setMax(I)V

    .line 931
    invoke-virtual {v1, v6}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setProgress(I)V

    .line 932
    invoke-virtual {v1, v3}, Landroid/support/v7/app/MediaRouteVolumeSlider;->setEnabled(Z)V

    goto :goto_2

    .line 938
    :cond_5
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroid/support/v7/app/aw;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_3
.end method
