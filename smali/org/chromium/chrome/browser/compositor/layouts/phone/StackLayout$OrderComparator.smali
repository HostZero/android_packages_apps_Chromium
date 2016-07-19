.class Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$OrderComparator;
.super Ljava/lang/Object;
.source "StackLayout.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$1;)V
    .locals 0

    .prologue
    .line 1080
    invoke-direct {p0}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$OrderComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1080
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    check-cast p2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/StackLayout$OrderComparator;->compare(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;)I
    .locals 2

    .prologue
    .line 1083
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getOrderSortingValue()I

    move-result v0

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackTab;->getOrderSortingValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
