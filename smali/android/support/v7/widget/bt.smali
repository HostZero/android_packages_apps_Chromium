.class final Landroid/support/v7/widget/bt;
.super Landroid/view/animation/Animation;
.source "SwitchCompat.java"


# instance fields
.field private a:F

.field private b:F

.field private synthetic c:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .locals 1

    .prologue
    .line 1167
    iput-object p1, p0, Landroid/support/v7/widget/bt;->c:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1168
    iput p2, p0, Landroid/support/v7/widget/bt;->a:F

    .line 1170
    sub-float v0, p3, p2

    iput v0, p0, Landroid/support/v7/widget/bt;->b:F

    .line 1171
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/SwitchCompat;FFB)V
    .locals 0

    .prologue
    .line 1162
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/bt;-><init>(Landroid/support/v7/widget/SwitchCompat;FF)V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 1175
    iget-object v0, p0, Landroid/support/v7/widget/bt;->c:Landroid/support/v7/widget/SwitchCompat;

    iget v1, p0, Landroid/support/v7/widget/bt;->a:F

    iget v2, p0, Landroid/support/v7/widget/bt;->b:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/support/v7/widget/SwitchCompat;F)V

    .line 1176
    return-void
.end method
