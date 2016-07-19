.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$StackLayoutFactory;
.super Ljava/lang/Object;
.source "ChromeTabbedActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerChrome$OverviewLayoutFactoryDelegate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity$1;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity$StackLayoutFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createOverviewLayout(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)Lorg/chromium/chrome/browser/compositor/layouts/Layout;
    .locals 1

    .prologue
    .line 425
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/compositor/layouts/LayoutUpdateHost;Lorg/chromium/chrome/browser/compositor/layouts/LayoutRenderHost;Lorg/chromium/chrome/browser/compositor/layouts/eventfilter/EventFilter;)V

    return-object v0
.end method
