.class final Landroid/support/v4/view/a/g;
.super Landroid/support/v4/view/a/e;
.source "AccessibilityManagerCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/support/v4/view/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 1

    .prologue
    .line 120
    .line 1067
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 120
    return v0
.end method
