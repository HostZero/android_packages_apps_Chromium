.class final Landroid/support/v4/view/aA;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 123
    check-cast p1, Landroid/support/v4/view/aE;

    check-cast p2, Landroid/support/v4/view/aE;

    .line 1126
    iget v0, p1, Landroid/support/v4/view/aE;->b:I

    iget v1, p2, Landroid/support/v4/view/aE;->b:I

    sub-int/2addr v0, v1

    .line 123
    return v0
.end method
