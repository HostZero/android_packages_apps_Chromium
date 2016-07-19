.class final Landroid/support/v7/app/Z;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Landroid/view/ViewGroup;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Landroid/support/v7/internal/view/menu/i;

.field i:Landroid/support/v7/internal/view/menu/g;

.field j:Landroid/content/Context;

.field k:Z

.field l:Z

.field m:Z

.field public n:Z

.field o:Z

.field p:Z

.field q:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1832
    iput p1, p0, Landroid/support/v7/app/Z;->a:I

    .line 1834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/Z;->o:Z

    .line 1835
    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 2

    .prologue
    .line 1887
    iget-object v0, p0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-ne p1, v0, :cond_1

    .line 1896
    :cond_0
    :goto_0
    return-void

    .line 1889
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_2

    .line 1890
    iget-object v0, p0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/app/Z;->i:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/support/v7/internal/view/menu/x;)V

    .line 1892
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    .line 1893
    if-eqz p1, :cond_0

    .line 1894
    iget-object v0, p0, Landroid/support/v7/app/Z;->i:Landroid/support/v7/internal/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/Z;->i:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;)V

    goto :goto_0
.end method
