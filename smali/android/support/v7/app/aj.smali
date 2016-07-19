.class public final Landroid/support/v7/app/aj;
.super Landroid/support/v7/app/AlertDialog;
.source "MediaRouteControllerDialog.java"


# instance fields
.field private A:Landroid/widget/ListView;

.field private B:Landroid/widget/SeekBar;

.field private C:Landroid/support/v7/app/au;

.field private D:Z

.field private E:I

.field private F:I

.field private G:I

.field private final H:I

.field private I:Landroid/support/v4/media/session/g;

.field private J:Landroid/support/v7/app/as;

.field private K:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private L:Landroid/support/v4/media/MediaDescriptionCompat;

.field private M:Landroid/support/v7/app/ar;

.field private N:Landroid/graphics/Bitmap;

.field private O:Landroid/net/Uri;

.field private P:Z

.field private Q:Z

.field private R:I

.field private final S:Landroid/view/accessibility/AccessibilityManager;

.field private final a:Landroid/support/v7/media/MediaRouter;

.field private final b:Landroid/support/v7/app/at;

.field private final c:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

.field private n:Landroid/widget/FrameLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/FrameLayout;

.field private q:Landroid/widget/FrameLayout;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Z

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/aj;-><init>(Landroid/content/Context;I)V

    .line 151
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-static {p1}, Landroid/support/v7/app/c;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/aj;->v:Z

    .line 155
    invoke-virtual {p0}, Landroid/support/v7/app/aj;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    .line 157
    new-instance v0, Landroid/support/v7/app/as;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/as;-><init>(Landroid/support/v7/app/aj;B)V

    iput-object v0, p0, Landroid/support/v7/app/aj;->J:Landroid/support/v7/app/as;

    .line 158
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/aj;->a:Landroid/support/v7/media/MediaRouter;

    .line 159
    new-instance v0, Landroid/support/v7/app/at;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/at;-><init>(Landroid/support/v7/app/aj;B)V

    iput-object v0, p0, Landroid/support/v7/app/aj;->b:Landroid/support/v7/app/at;

    .line 160
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->c()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 161
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/aj;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/aj;->H:I

    .line 164
    const-string/jumbo v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/app/aj;->S:Landroid/view/accessibility/AccessibilityManager;

    .line 166
    return-void
.end method

.method private a(II)I
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 761
    if-lt p1, p2, :cond_0

    .line 763
    iget v0, p0, Landroid/support/v7/app/aj;->g:I

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 766
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/app/aj;->g:I

    int-to-float v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/aj;II)I
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/aj;->a(II)I

    move-result v0

    return v0
.end method

.method private a(Z)I
    .locals 2

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/aj;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 460
    if-eqz p1, :cond_1

    .line 461
    iget-object v1, p0, Landroid/support/v7/app/aj;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 463
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/aj;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 464
    iget-object v1, p0, Landroid/support/v7/app/aj;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/aj;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 467
    iget-object v1, p0, Landroid/support/v7/app/aj;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_3
    return v0
.end method

.method static synthetic a(Landroid/support/v7/app/aj;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Landroid/support/v7/app/aj;->N:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/app/aj;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Landroid/support/v7/app/aj;->O:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/app/aj;Landroid/support/v4/media/MediaDescriptionCompat;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Landroid/support/v7/app/aj;->L:Landroid/support/v4/media/MediaDescriptionCompat;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/app/aj;Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/app/aj;Landroid/support/v4/media/session/g;)Landroid/support/v4/media/session/g;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/app/aj;Landroid/support/v7/app/ar;)Landroid/support/v7/app/ar;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/aj;->M:Landroid/support/v7/app/ar;

    return-object v0
.end method

.method private a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    iget-object v2, p0, Landroid/support/v7/app/aj;->J:Landroid/support/v7/app/as;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/g;->b(Landroid/support/v4/media/session/h;)V

    .line 236
    iput-object v1, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    .line 238
    :cond_0
    if-nez p1, :cond_2

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/aj;->f:Z

    if-eqz v0, :cond_1

    .line 245
    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/g;

    iget-object v2, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/support/v4/media/session/g;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    iget-object v2, p0, Landroid/support/v7/app/aj;->J:Landroid/support/v7/app/as;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/g;->a(Landroid/support/v4/media/session/h;)V

    .line 252
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 254
    :goto_2
    if-nez v0, :cond_5

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Landroid/support/v7/app/aj;->L:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 255
    iget-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    if-nez v0, :cond_6

    :goto_4
    iput-object v1, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 256
    invoke-direct {p0}, Landroid/support/v7/app/aj;->c()V

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string/jumbo v2, "MediaRouteControllerDialog"

    const-string/jumbo v3, "Error creating media controller in setMediaSession."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 252
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    invoke-virtual {v0}, Landroid/support/v4/media/session/g;->c()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    goto :goto_2

    .line 254
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->a()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_3

    .line 255
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    invoke-virtual {v0}, Landroid/support/v4/media/session/g;->b()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    goto :goto_4
.end method

.method static synthetic a(Landroid/support/v7/app/aj;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/support/v7/app/aj;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 594
    iget v0, p0, Landroid/support/v7/app/aj;->F:I

    invoke-static {p1, v0}, Landroid/support/v7/app/aj;->c(Landroid/view/View;I)V

    .line 595
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 597
    iget v2, p0, Landroid/support/v7/app/aj;->E:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 598
    iget v2, p0, Landroid/support/v7/app/aj;->E:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 599
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    return-void
.end method

.method static synthetic a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 78
    invoke-static {p0, p1}, Landroid/support/v7/app/aj;->c(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/aj;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/support/v7/app/aj;->P:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/app/aj;Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/app/aj;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/support/v7/app/aj;->P:Z

    return p1
.end method

.method private a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 733
    iget-boolean v1, p0, Landroid/support/v7/app/aj;->v:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->p()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Landroid/support/v7/media/t;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroid/support/v7/media/t;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    check-cast v0, Landroid/support/v7/media/t;

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/app/aj;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    return-object v0
.end method

.method private b(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 603
    .line 1738
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 605
    new-instance v1, Landroid/support/v7/app/ao;

    invoke-direct {v1, p0, v0, p2, p1}, Landroid/support/v7/app/ao;-><init>(Landroid/support/v7/app/aj;IILandroid/view/View;)V

    .line 612
    iget v0, p0, Landroid/support/v7/app/aj;->R:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 614
    iget-object v2, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    iget-boolean v0, p0, Landroid/support/v7/app/aj;->P:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/support/v7/mediarouter/R$interpolator;->mr_linear_out_slow_in:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 617
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    if-ne p1, v0, :cond_1

    .line 618
    new-instance v0, Landroid/support/v7/app/ap;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ap;-><init>(Landroid/support/v7/app/aj;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 633
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 634
    return-void

    .line 614
    :cond_2
    sget v0, Landroid/support/v7/mediarouter/R$interpolator;->mr_fast_out_slow_in:I

    goto :goto_0
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 476
    iget-object v3, p0, Landroid/support/v7/app/aj;->z:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/aj;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/support/v7/app/aj;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    return-void

    :cond_0
    move v0, v2

    .line 476
    goto :goto_0

    :cond_1
    move v2, v1

    .line 478
    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/app/aj;Z)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/aj;->Q:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/app/aj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/aj;->dismiss()V

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/aj;->e:Z

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Landroid/support/v7/app/aj;->u:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v4, p0, Landroid/support/v7/app/aj;->i:Landroid/widget/Button;

    iget-object v0, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Landroid/support/v7/app/aj;->h:Landroid/view/View;

    if-nez v0, :cond_4

    .line 437
    iget-object v0, p0, Landroid/support/v7/app/aj;->M:Landroid/support/v7/app/ar;

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p0, Landroid/support/v7/app/aj;->M:Landroid/support/v7/app/ar;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ar;->cancel(Z)Z

    .line 440
    :cond_3
    new-instance v0, Landroid/support/v7/app/ar;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ar;-><init>(Landroid/support/v7/app/aj;)V

    iput-object v0, p0, Landroid/support/v7/app/aj;->M:Landroid/support/v7/app/ar;

    .line 441
    iget-object v0, p0, Landroid/support/v7/app/aj;->M:Landroid/support/v7/app/ar;

    new-array v4, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ar;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 443
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/app/aj;->f()V

    .line 1672
    invoke-direct {p0}, Landroid/support/v7/app/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1673
    iget-object v0, p0, Landroid/support/v7/app/aj;->L:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_8

    move-object v0, v3

    .line 1674
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v5

    .line 1676
    :goto_3
    iget-object v6, p0, Landroid/support/v7/app/aj;->L:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v6, :cond_a

    .line 1677
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    move v6, v5

    .line 1681
    :goto_5
    iget-object v7, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v7}, Landroid/support/v7/media/MediaRouter$RouteInfo;->t()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_c

    .line 1684
    iget-object v0, p0, Landroid/support/v7/app/aj;->s:Landroid/widget/TextView;

    sget v3, Landroid/support/v7/mediarouter/R$string;->mr_controller_casting_screen:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    move v3, v5

    .line 1702
    :goto_6
    iget-object v4, p0, Landroid/support/v7/app/aj;->s:Landroid/widget/TextView;

    if-eqz v3, :cond_10

    move v3, v1

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1703
    iget-object v3, p0, Landroid/support/v7/app/aj;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1705
    iget-object v0, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_6

    .line 1706
    iget-object v0, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_12

    :cond_5
    move v0, v5

    .line 1708
    :goto_9
    iget-object v3, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x204

    and-long/2addr v6, v8

    cmp-long v3, v6, v10

    if-eqz v3, :cond_13

    move v3, v5

    .line 1710
    :goto_a
    iget-object v4, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x202

    and-long/2addr v6, v8

    cmp-long v4, v6, v10

    if-eqz v4, :cond_14

    .line 1712
    :goto_b
    if-eqz v0, :cond_15

    if-eqz v5, :cond_15

    .line 1713
    iget-object v0, p0, Landroid/support/v7/app/aj;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1714
    iget-object v0, p0, Landroid/support/v7/app/aj;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    sget v2, Landroid/support/v7/mediarouter/R$attr;->mediaRoutePauseDrawable:I

    invoke-static {v1, v2}, Landroid/support/v7/app/c;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1716
    iget-object v0, p0, Landroid/support/v7/app/aj;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_controller_pause:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1729
    :cond_6
    :goto_c
    invoke-direct {p0}, Landroid/support/v7/app/aj;->e()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 434
    goto/16 :goto_1

    .line 1673
    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/aj;->L:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->a()Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    move v4, v1

    .line 1674
    goto/16 :goto_3

    .line 1676
    :cond_a
    iget-object v3, p0, Landroid/support/v7/app/aj;->L:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->b()Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_4

    :cond_b
    move v6, v1

    .line 1677
    goto/16 :goto_5

    .line 1686
    :cond_c
    iget-object v7, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v7

    if-nez v7, :cond_e

    .line 1687
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/aj;->s:Landroid/widget/TextView;

    sget v3, Landroid/support/v7/mediarouter/R$string;->mr_controller_no_media_selected:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    move v3, v5

    .line 1688
    goto/16 :goto_6

    .line 1689
    :cond_e
    if-nez v4, :cond_f

    if-nez v6, :cond_f

    .line 1690
    iget-object v0, p0, Landroid/support/v7/app/aj;->s:Landroid/widget/TextView;

    sget v3, Landroid/support/v7/mediarouter/R$string;->mr_controller_no_info_available:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    move v3, v5

    .line 1691
    goto/16 :goto_6

    .line 1693
    :cond_f
    if-eqz v4, :cond_18

    .line 1694
    iget-object v4, p0, Landroid/support/v7/app/aj;->s:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v5

    .line 1697
    :goto_d
    if-eqz v6, :cond_17

    .line 1698
    iget-object v4, p0, Landroid/support/v7/app/aj;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v0

    move v0, v5

    .line 1699
    goto/16 :goto_6

    :cond_10
    move v3, v2

    .line 1702
    goto/16 :goto_7

    :cond_11
    move v0, v2

    .line 1703
    goto/16 :goto_8

    :cond_12
    move v0, v1

    .line 1706
    goto/16 :goto_9

    :cond_13
    move v3, v1

    .line 1708
    goto/16 :goto_a

    :cond_14
    move v5, v1

    .line 1710
    goto/16 :goto_b

    .line 1718
    :cond_15
    if-nez v0, :cond_16

    if-eqz v3, :cond_16

    .line 1719
    iget-object v0, p0, Landroid/support/v7/app/aj;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1720
    iget-object v0, p0, Landroid/support/v7/app/aj;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    sget v2, Landroid/support/v7/mediarouter/R$attr;->mediaRoutePlayDrawable:I

    invoke-static {v1, v2}, Landroid/support/v7/app/c;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1722
    iget-object v0, p0, Landroid/support/v7/app/aj;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_controller_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 1725
    :cond_16
    iget-object v0, p0, Landroid/support/v7/app/aj;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_c

    :cond_17
    move v3, v0

    move v0, v1

    goto/16 :goto_6

    :cond_18
    move v0, v1

    goto :goto_d
.end method

.method private static c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 743
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 744
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    return-void
.end method

.method static synthetic c(Landroid/support/v7/app/aj;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/support/v7/app/aj;->D:Z

    return p1
.end method

.method static synthetic d(Landroid/support/v7/app/aj;)Landroid/support/v7/media/t;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v7/app/aj;->b()Landroid/support/v7/media/t;

    move-result-object v0

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v7/app/aj;->h:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/aj;->L:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/v7/app/aj;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->p:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v7/app/aj;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 487
    new-instance v1, Landroid/support/v7/app/an;

    invoke-direct {v1, p0}, Landroid/support/v7/app/an;-><init>(Landroid/support/v7/app/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 494
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 637
    iget-boolean v1, p0, Landroid/support/v7/app/aj;->D:Z

    if-nez v1, :cond_4

    .line 638
    iget-object v1, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v1}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 639
    iget-object v1, p0, Landroid/support/v7/app/aj;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    iget-object v1, p0, Landroid/support/v7/app/aj;->B:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 641
    iget-object v1, p0, Landroid/support/v7/app/aj;->B:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 642
    invoke-direct {p0}, Landroid/support/v7/app/aj;->b()Landroid/support/v7/media/t;

    move-result-object v1

    if-nez v1, :cond_2

    .line 643
    iget-object v0, p0, Landroid/support/v7/app/aj;->m:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setVisibility(I)V

    .line 655
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/app/aj;->e()V

    .line 669
    :cond_1
    return-void

    .line 645
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/aj;->m:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/aw;

    .line 648
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Landroid/support/v7/app/aw;->notifyDataSetChanged()V

    goto :goto_0

    .line 653
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/aj;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 656
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/aj;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 657
    iget-object v1, p0, Landroid/support/v7/app/aj;->B:Landroid/widget/SeekBar;

    iget-object v2, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->q()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 658
    iget-boolean v1, p0, Landroid/support/v7/app/aj;->P:Z

    if-eqz v1, :cond_1

    move v1, v0

    .line 659
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 660
    invoke-direct {p0}, Landroid/support/v7/app/aj;->b()Landroid/support/v7/media/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/media/t;->a(I)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 661
    invoke-direct {p0, v2}, Landroid/support/v7/app/aj;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 662
    iget-object v0, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 664
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->q()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 659
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic f(Landroid/support/v7/app/aj;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v7/app/aj;->e()V

    return-void
.end method

.method static synthetic g(Landroid/support/v7/app/aj;)V
    .locals 11

    .prologue
    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 78
    .line 2501
    iget-object v0, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    .line 2738
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2502
    iget-object v1, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Landroid/support/v7/app/aj;->c(Landroid/view/View;I)V

    .line 2503
    invoke-direct {p0}, Landroid/support/v7/app/aj;->d()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/aj;->b(Z)V

    .line 2504
    invoke-virtual {p0}, Landroid/support/v7/app/aj;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 2505
    invoke-virtual {p0}, Landroid/support/v7/app/aj;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    .line 2508
    iget-object v1, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Landroid/support/v7/app/aj;->c(Landroid/view/View;I)V

    .line 2510
    iget-object v0, p0, Landroid/support/v7/app/aj;->h:Landroid/view/View;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/aj;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_c

    .line 2511
    iget-object v0, p0, Landroid/support/v7/app/aj;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2512
    if-eqz v0, :cond_c

    .line 2513
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Landroid/support/v7/app/aj;->a(II)I

    move-result v1

    .line 2514
    iget-object v3, p0, Landroid/support/v7/app/aj;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v6, v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move v0, v1

    .line 2518
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/app/aj;->d()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/aj;->a(Z)I

    move-result v6

    .line 2519
    iget-object v1, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    :goto_2
    move v3, v2

    .line 2522
    :goto_3
    iget-object v7, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 2523
    iget-object v7, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/support/v7/app/aj;->a(Landroid/view/View;)V

    .line 2522
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2514
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2519
    goto :goto_2

    .line 2525
    :cond_2
    iget v3, p0, Landroid/support/v7/app/aj;->F:I

    mul-int/2addr v3, v1

    .line 2526
    if-lez v1, :cond_b

    .line 2527
    iget v1, p0, Landroid/support/v7/app/aj;->H:I

    add-int/2addr v1, v3

    .line 2529
    :goto_4
    iget v3, p0, Landroid/support/v7/app/aj;->G:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2530
    iget-boolean v3, p0, Landroid/support/v7/app/aj;->P:Z

    if-eqz v3, :cond_4

    .line 2532
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v6

    .line 2534
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2535
    invoke-virtual {v5, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2539
    iget-object v5, p0, Landroid/support/v7/app/aj;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    iget-object v8, p0, Landroid/support/v7/app/aj;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v5, v8

    .line 2542
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int v5, v8, v5

    .line 2545
    iget-object v8, p0, Landroid/support/v7/app/aj;->h:Landroid/view/View;

    if-nez v8, :cond_5

    if-lez v0, :cond_5

    if-gt v3, v5, :cond_5

    .line 2547
    iget-object v6, p0, Landroid/support/v7/app/aj;->r:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2548
    iget-object v6, p0, Landroid/support/v7/app/aj;->r:Landroid/widget/ImageView;

    invoke-static {v6, v0}, Landroid/support/v7/app/aj;->c(Landroid/view/View;I)V

    move v10, v3

    move v3, v0

    move v0, v10

    .line 2558
    :goto_6
    iget-object v6, p0, Landroid/support/v7/app/aj;->h:Landroid/view/View;

    if-nez v6, :cond_7

    invoke-direct {p0}, Landroid/support/v7/app/aj;->d()Z

    move-result v6

    if-eqz v6, :cond_7

    if-gt v0, v5, :cond_7

    .line 2560
    iget-object v0, p0, Landroid/support/v7/app/aj;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2564
    :goto_7
    iget-object v0, p0, Landroid/support/v7/app/aj;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v4

    :goto_8
    invoke-direct {p0, v0}, Landroid/support/v7/app/aj;->b(Z)V

    .line 2565
    iget-object v0, p0, Landroid/support/v7/app/aj;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    :goto_9
    invoke-direct {p0, v4}, Landroid/support/v7/app/aj;->a(Z)I

    move-result v4

    .line 2567
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v4

    .line 2571
    if-le v0, v5, :cond_3

    .line 2572
    sub-int/2addr v0, v5

    sub-int/2addr v1, v0

    move v0, v5

    .line 2576
    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 2577
    iget-object v3, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->clearAnimation()V

    .line 2578
    iget-object v3, p0, Landroid/support/v7/app/aj;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 2579
    iget-boolean v3, p0, Landroid/support/v7/app/aj;->Q:Z

    if-eqz v3, :cond_a

    .line 2580
    iget-object v3, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/app/aj;->b(Landroid/view/View;I)V

    .line 2581
    iget-object v3, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-direct {p0, v3, v1}, Landroid/support/v7/app/aj;->b(Landroid/view/View;I)V

    .line 2582
    iget-object v1, p0, Landroid/support/v7/app/aj;->p:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/aj;->b(Landroid/view/View;I)V

    .line 2588
    :goto_a
    iput-boolean v2, p0, Landroid/support/v7/app/aj;->Q:Z

    .line 2590
    iget-object v0, p0, Landroid/support/v7/app/aj;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/app/aj;->c(Landroid/view/View;I)V

    .line 78
    return-void

    :cond_4
    move v1, v2

    .line 2530
    goto/16 :goto_5

    .line 2550
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    .line 3738
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2550
    iget-object v3, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/support/v7/app/aj;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 2552
    iget-object v0, p0, Landroid/support/v7/app/aj;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2555
    :cond_6
    add-int v0, v1, v6

    move v3, v2

    goto/16 :goto_6

    .line 2562
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/aj;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7

    :cond_8
    move v0, v2

    .line 2564
    goto :goto_8

    :cond_9
    move v4, v2

    .line 2565
    goto :goto_9

    .line 2584
    :cond_a
    iget-object v3, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    invoke-static {v3, v4}, Landroid/support/v7/app/aj;->c(Landroid/view/View;I)V

    .line 2585
    iget-object v3, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-static {v3, v1}, Landroid/support/v7/app/aj;->c(Landroid/view/View;I)V

    .line 2586
    iget-object v1, p0, Landroid/support/v7/app/aj;->p:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Landroid/support/v7/app/aj;->c(Landroid/view/View;I)V

    goto :goto_a

    :cond_b
    move v1, v3

    goto/16 :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_1
.end method

.method static synthetic h(Landroid/support/v7/app/aj;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v7/app/aj;->c()V

    return-void
.end method

.method static synthetic i(Landroid/support/v7/app/aj;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v7/app/aj;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v7/app/aj;->f()V

    return-void
.end method

.method static synthetic k(Landroid/support/v7/app/aj;)Landroid/support/v4/media/session/g;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->I:Landroid/support/v4/media/session/g;

    return-object v0
.end method

.method static synthetic l(Landroid/support/v7/app/aj;)Landroid/support/v7/app/as;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->J:Landroid/support/v7/app/as;

    return-object v0
.end method

.method static synthetic m(Landroid/support/v7/app/aj;)Landroid/support/v7/media/MediaRouter;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->a:Landroid/support/v7/media/MediaRouter;

    return-object v0
.end method

.method static synthetic n(Landroid/support/v7/app/aj;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->K:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method static synthetic o(Landroid/support/v7/app/aj;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->S:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic p(Landroid/support/v7/app/aj;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/support/v7/app/aj;->D:Z

    return v0
.end method

.method static synthetic q(Landroid/support/v7/app/aj;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->B:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic r(Landroid/support/v7/app/aj;)Landroid/support/v7/app/au;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->C:Landroid/support/v7/app/au;

    return-object v0
.end method

.method static synthetic s(Landroid/support/v7/app/aj;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->L:Landroid/support/v4/media/MediaDescriptionCompat;

    return-object v0
.end method

.method static synthetic t(Landroid/support/v7/app/aj;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->N:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic u(Landroid/support/v7/app/aj;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->O:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic v(Landroid/support/v7/app/aj;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v7/app/aj;->r:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v0, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/c;->a(Landroid/content/Context;)I

    move-result v0

    .line 368
    invoke-virtual {p0}, Landroid/support/v7/app/aj;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 370
    invoke-virtual {p0}, Landroid/support/v7/app/aj;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/aj;->g:I

    .line 373
    iget-object v0, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 374
    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_item_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/aj;->E:I

    .line 376
    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/aj;->F:I

    .line 378
    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/aj;->G:I

    .line 382
    iput-object v3, p0, Landroid/support/v7/app/aj;->N:Landroid/graphics/Bitmap;

    .line 383
    iput-object v3, p0, Landroid/support/v7/app/aj;->O:Landroid/net/Uri;

    .line 384
    invoke-direct {p0}, Landroid/support/v7/app/aj;->c()V

    .line 385
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .prologue
    .line 389
    invoke-super {p0}, Landroid/support/v7/app/AlertDialog;->onAttachedToWindow()V

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/aj;->f:Z

    .line 392
    iget-object v0, p0, Landroid/support/v7/app/aj;->a:Landroid/support/v7/media/MediaRouter;

    sget-object v1, Landroid/support/v7/media/e;->a:Landroid/support/v7/media/e;

    iget-object v2, p0, Landroid/support/v7/app/aj;->b:Landroid/support/v7/app/at;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;I)V

    .line 394
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->d()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/aj;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 395
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    invoke-super {p0, p1}, Landroid/support/v7/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 272
    invoke-virtual {p0}, Landroid/support/v7/app/aj;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x106000d

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 273
    sget v0, Landroid/support/v7/mediarouter/R$layout;->mr_controller_material_dialog_b:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->setContentView(I)V

    .line 276
    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    new-instance v3, Landroid/support/v7/app/aq;

    invoke-direct {v3, p0, v2}, Landroid/support/v7/app/aq;-><init>(Landroid/support/v7/app/aj;B)V

    .line 280
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_expandable_area:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/app/aj;->n:Landroid/widget/FrameLayout;

    .line 281
    iget-object v0, p0, Landroid/support/v7/app/aj;->n:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/support/v7/app/ak;

    invoke-direct {v4, p0}, Landroid/support/v7/app/ak;-><init>(Landroid/support/v7/app/aj;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_dialog_area:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/app/aj;->o:Landroid/widget/LinearLayout;

    .line 288
    iget-object v0, p0, Landroid/support/v7/app/aj;->o:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/support/v7/app/al;

    invoke-direct {v4, p0}, Landroid/support/v7/app/al;-><init>(Landroid/support/v7/app/aj;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/c;->e(Landroid/content/Context;)I

    move-result v4

    .line 295
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/aj;->i:Landroid/widget/Button;

    .line 296
    iget-object v0, p0, Landroid/support/v7/app/aj;->i:Landroid/widget/Button;

    sget v5, Landroid/support/v7/mediarouter/R$string;->mr_controller_disconnect:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 297
    iget-object v0, p0, Landroid/support/v7/app/aj;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 298
    iget-object v0, p0, Landroid/support/v7/app/aj;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/aj;->j:Landroid/widget/Button;

    .line 301
    iget-object v0, p0, Landroid/support/v7/app/aj;->j:Landroid/widget/Button;

    sget v5, Landroid/support/v7/mediarouter/R$string;->mr_controller_stop:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 302
    iget-object v0, p0, Landroid/support/v7/app/aj;->j:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 303
    iget-object v0, p0, Landroid/support/v7/app/aj;->j:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_name:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/aj;->u:Landroid/widget/TextView;

    .line 306
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_close:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/support/v7/app/aj;->l:Landroid/widget/ImageButton;

    .line 307
    iget-object v0, p0, Landroid/support/v7/app/aj;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_custom_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/app/aj;->q:Landroid/widget/FrameLayout;

    .line 309
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_default_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/app/aj;->p:Landroid/widget/FrameLayout;

    .line 310
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_art:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/app/aj;->r:Landroid/widget/ImageView;

    .line 312
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_media_main_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    .line 313
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_control_divider:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/aj;->z:Landroid/view/View;

    .line 315
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_playback_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Landroid/support/v7/app/aj;->x:Landroid/widget/RelativeLayout;

    .line 316
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_control_title:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/aj;->s:Landroid/widget/TextView;

    .line 317
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_control_subtitle:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/aj;->t:Landroid/widget/TextView;

    .line 318
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_control_play_pause:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/support/v7/app/aj;->k:Landroid/widget/ImageButton;

    .line 319
    iget-object v0, p0, Landroid/support/v7/app/aj;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/app/aj;->y:Landroid/widget/LinearLayout;

    .line 322
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v7/app/aj;->B:Landroid/widget/SeekBar;

    .line 323
    iget-object v0, p0, Landroid/support/v7/app/aj;->B:Landroid/widget/SeekBar;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 324
    new-instance v0, Landroid/support/v7/app/au;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/app/au;-><init>(Landroid/support/v7/app/aj;B)V

    iput-object v0, p0, Landroid/support/v7/app/aj;->C:Landroid/support/v7/app/au;

    .line 325
    iget-object v0, p0, Landroid/support/v7/app/aj;->B:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/support/v7/app/aj;->C:Landroid/support/v7/app/au;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 327
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_group_list:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    .line 328
    iget-object v3, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/v7/app/aj;->A:Landroid/widget/ListView;

    invoke-direct {p0}, Landroid/support/v7/app/aj;->b()Landroid/support/v7/media/t;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v5, v0}, Landroid/support/v7/app/c;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V

    .line 330
    iget-object v3, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/app/aj;->B:Landroid/widget/SeekBar;

    check-cast v0, Landroid/support/v7/app/MediaRouteVolumeSlider;

    iget-object v4, p0, Landroid/support/v7/app/aj;->w:Landroid/widget/LinearLayout;

    invoke-static {v3, v0, v4}, Landroid/support/v7/app/c;->a(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 333
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_group_expand_collapse:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iput-object v0, p0, Landroid/support/v7/app/aj;->m:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    .line 335
    iget-object v0, p0, Landroid/support/v7/app/aj;->m:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    new-instance v3, Landroid/support/v7/app/am;

    invoke-direct {v3, p0}, Landroid/support/v7/app/am;-><init>(Landroid/support/v7/app/aj;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Landroid/support/v7/app/aj;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/v7/mediarouter/R$integer;->mr_controller_volume_group_list_animation_duration_ms:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/aj;->R:I

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/aj;->h:Landroid/view/View;

    .line 355
    iget-object v0, p0, Landroid/support/v7/app/aj;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/support/v7/app/aj;->q:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/support/v7/app/aj;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Landroid/support/v7/app/aj;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 359
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/app/aj;->e:Z

    .line 360
    invoke-virtual {p0}, Landroid/support/v7/app/aj;->a()V

    .line 361
    return-void

    :cond_1
    move v0, v2

    .line 328
    goto :goto_0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v7/app/aj;->a:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/aj;->b:Landroid/support/v7/app/at;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/g;)V

    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/aj;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/aj;->f:Z

    .line 402
    invoke-super {p0}, Landroid/support/v7/app/AlertDialog;->onDetachedFromWindow()V

    .line 403
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0x19

    const/4 v1, 0x1

    .line 407
    if-eq p1, v3, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 409
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/aj;->c:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v3, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->c(I)V

    .line 412
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 409
    goto :goto_0

    .line 412
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 417
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 419
    :cond_0
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
