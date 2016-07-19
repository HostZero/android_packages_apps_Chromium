.class final Landroid/support/v7/app/s;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/app/o;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 561
    iput-object p2, p0, Landroid/support/v7/app/s;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/app/s;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/app/s;->b:Landroid/view/View;

    invoke-static {p1, v0, v1}, Landroid/support/v7/app/o;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 569
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 563
    return-void
.end method
