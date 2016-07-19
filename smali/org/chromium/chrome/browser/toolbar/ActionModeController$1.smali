.class final Lorg/chromium/chrome/browser/toolbar/ActionModeController$1;
.super Landroid/util/Property;
.source "ActionModeController.java"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    invoke-interface {p1}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;->getControlTopMargin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$1;->get(Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$1;->set(Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;Ljava/lang/Integer;)V

    return-void
.end method

.method public final set(Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;->setControlTopMargin(I)V

    .line 43
    return-void
.end method
