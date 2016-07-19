.class final Landroid/support/v4/view/aI;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/support/v4/e/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1275
    .line 3278
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1275
    return-object v0
.end method

.method public final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1275
    .line 2282
    new-array v0, p1, [Landroid/support/v4/view/ViewPager$SavedState;

    .line 1275
    return-object v0
.end method
