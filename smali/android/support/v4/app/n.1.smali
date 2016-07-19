.class final Landroid/support/v4/app/n;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Landroid/support/v4/app/p;

.field private synthetic c:I

.field private synthetic d:Ljava/lang/Object;

.field private synthetic e:Landroid/support/v4/app/k;


# direct methods
.method constructor <init>(Landroid/support/v4/app/k;Landroid/view/View;Landroid/support/v4/app/p;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Landroid/support/v4/app/n;->e:Landroid/support/v4/app/k;

    iput-object p2, p0, Landroid/support/v4/app/n;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/n;->b:Landroid/support/v4/app/p;

    iput p4, p0, Landroid/support/v4/app/n;->c:I

    iput-object p5, p0, Landroid/support/v4/app/n;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .prologue
    .line 1362
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1363
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/support/v4/app/k;

    iget-object v1, p0, Landroid/support/v4/app/n;->b:Landroid/support/v4/app/p;

    iget v2, p0, Landroid/support/v4/app/n;->c:I

    iget-object v3, p0, Landroid/support/v4/app/n;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/k;Landroid/support/v4/app/p;ILjava/lang/Object;)V

    .line 1364
    const/4 v0, 0x1

    return v0
.end method
