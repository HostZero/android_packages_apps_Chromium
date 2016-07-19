.class final Lorg/chromium/chrome/browser/widget/NumberRollView$1;
.super Landroid/util/Property;
.source "NumberRollView.java"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Lorg/chromium/chrome/browser/widget/NumberRollView;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 44
    # invokes: Lorg/chromium/chrome/browser/widget/NumberRollView;->getNumberRoll()F
    invoke-static {p1}, Lorg/chromium/chrome/browser/widget/NumberRollView;->access$100(Lorg/chromium/chrome/browser/widget/NumberRollView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lorg/chromium/chrome/browser/widget/NumberRollView;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/widget/NumberRollView$1;->get(Lorg/chromium/chrome/browser/widget/NumberRollView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lorg/chromium/chrome/browser/widget/NumberRollView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/NumberRollView$1;->set(Lorg/chromium/chrome/browser/widget/NumberRollView;Ljava/lang/Float;)V

    return-void
.end method

.method public final set(Lorg/chromium/chrome/browser/widget/NumberRollView;Ljava/lang/Float;)V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # invokes: Lorg/chromium/chrome/browser/widget/NumberRollView;->setNumberRoll(F)V
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/widget/NumberRollView;->access$000(Lorg/chromium/chrome/browser/widget/NumberRollView;F)V

    .line 40
    return-void
.end method
