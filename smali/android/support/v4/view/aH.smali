.class final Landroid/support/v4/view/aH;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# instance fields
.field private synthetic a:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 2907
    iput-object p1, p0, Landroid/support/v4/view/aH;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;B)V
    .locals 0

    .prologue
    .line 2907
    invoke-direct {p0, p1}, Landroid/support/v4/view/aH;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 2910
    iget-object v0, p0, Landroid/support/v4/view/aH;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 2911
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 2914
    iget-object v0, p0, Landroid/support/v4/view/aH;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 2915
    return-void
.end method
