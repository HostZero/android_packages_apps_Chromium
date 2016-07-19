.class Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$1;
.super Landroid/util/Property;
.source "LocationBarTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 36
    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->mUrlFocusChangePercent:F
    invoke-static {p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$1;->get(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$1;->set(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Ljava/lang/Float;)V

    return-void
.end method

.method public set(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Ljava/lang/Float;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet$1;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->setUrlFocusChangePercent(F)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->access$100(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;F)V

    .line 42
    return-void
.end method
