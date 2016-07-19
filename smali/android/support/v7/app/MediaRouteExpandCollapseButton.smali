.class Landroid/support/v7/app/MediaRouteExpandCollapseButton;
.super Landroid/widget/ImageButton;
.source "MediaRouteExpandCollapseButton.java"


# instance fields
.field private final a:Landroid/graphics/drawable/AnimationDrawable;

.field private final b:Landroid/graphics/drawable/AnimationDrawable;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget v0, Landroid/support/v7/mediarouter/R$drawable;->ic_expand:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    sget v0, Landroid/support/v7/mediarouter/R$drawable;->ic_collapse:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->b:Landroid/graphics/drawable/AnimationDrawable;

    .line 56
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1}, Landroid/support/v7/app/c;->d(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 58
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 59
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 61
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_expand_group:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->c:Ljava/lang/String;

    .line 62
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_controller_collapse_group:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->d:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->a:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v0, Landroid/support/v7/app/az;

    invoke-direct {v0, p0}, Landroid/support/v7/app/az;-><init>(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)V

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->e:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/app/MediaRouteExpandCollapseButton;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->e:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->a:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->b:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->f:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->f:Landroid/view/View$OnClickListener;

    .line 90
    return-void
.end method
