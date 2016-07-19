.class Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$DefaultTabModelSelectorFactory;
.super Ljava/lang/Object;
.source "TabWindowManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$TabModelSelectorFactory;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$DefaultTabModelSelectorFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$1;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$DefaultTabModelSelectorFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public buildSelector(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/ui/base/WindowAndroid;I)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 176
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/TabWindowManager$DefaultTabModelSelectorFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;

    invoke-direct {v0, p1, p3, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorImpl;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;ILorg/chromium/ui/base/WindowAndroid;)V

    return-object v0
.end method
