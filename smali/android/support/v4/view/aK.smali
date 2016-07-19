.class public final Landroid/support/v4/view/aK;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# static fields
.field private static a:Landroid/support/v4/view/aM;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 204
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 205
    new-instance v0, Landroid/support/v4/view/aO;

    invoke-direct {v0}, Landroid/support/v4/view/aO;-><init>()V

    sput-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 207
    new-instance v0, Landroid/support/v4/view/aN;

    invoke-direct {v0}, Landroid/support/v4/view/aN;-><init>()V

    sput-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    goto :goto_0

    .line 208
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 209
    new-instance v0, Landroid/support/v4/view/aL;

    invoke-direct {v0}, Landroid/support/v4/view/aL;-><init>()V

    sput-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    goto :goto_0

    .line 211
    :cond_2
    new-instance v0, Landroid/support/v4/view/aM;

    invoke-direct {v0}, Landroid/support/v4/view/aM;-><init>()V

    sput-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 304
    sget-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/aM;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 7

    .prologue
    .line 330
    sget-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/aM;->a(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 331
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 6

    .prologue
    .line 355
    sget-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/aM;->a(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 356
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 404
    sget-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/aM;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 6

    .prologue
    .line 379
    sget-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/aM;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 268
    sget-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/aM;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 241
    sget-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/aM;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 289
    sget-object v0, Landroid/support/v4/view/aK;->a:Landroid/support/v4/view/aM;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/aM;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    .line 290
    return-void
.end method
