.class final Landroid/support/v7/app/ao;
.super Landroid/view/animation/Animation;
.source "MediaRouteControllerDialog.java"


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/app/aj;IILandroid/view/View;)V
    .locals 0

    .prologue
    .line 605
    iput p2, p0, Landroid/support/v7/app/ao;->a:I

    iput p3, p0, Landroid/support/v7/app/ao;->b:I

    iput-object p4, p0, Landroid/support/v7/app/ao;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 608
    iget v0, p0, Landroid/support/v7/app/ao;->a:I

    iget v1, p0, Landroid/support/v7/app/ao;->a:I

    iget v2, p0, Landroid/support/v7/app/ao;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 609
    iget-object v1, p0, Landroid/support/v7/app/ao;->c:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v7/app/aj;->a(Landroid/view/View;I)V

    .line 610
    return-void
.end method
