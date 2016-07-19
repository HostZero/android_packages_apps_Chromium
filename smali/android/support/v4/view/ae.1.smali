.class Landroid/support/v4/view/ae;
.super Landroid/support/v4/view/ad;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1083
    invoke-direct {p0}, Landroid/support/v4/view/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)I
    .locals 1

    .prologue
    .line 1110
    .line 2041
    invoke-static {p1, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1110
    return v0
.end method

.method final a()J
    .locals 2

    .prologue
    .line 2025
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    .line 1086
    return-wide v0
.end method

.method public final a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1134
    .line 2093
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 1135
    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1094
    .line 2033
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1095
    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1230
    .line 3153
    invoke-virtual {p1, p2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1231
    return-void
.end method

.method public final b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1138
    .line 2097
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1139
    return-void
.end method

.method public final b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1235
    .line 3157
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 1236
    return-void
.end method

.method public final c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1142
    .line 2101
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1143
    return-void
.end method

.method public final d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1166
    .line 2125
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1167
    return-void
.end method

.method public final e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1170
    .line 2129
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1171
    return-void
.end method

.method public final f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1090
    .line 2029
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 1090
    return v0
.end method

.method public final f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1174
    .line 2133
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 1175
    return-void
.end method

.method public final g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1098
    .line 2037
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 1098
    return v0
.end method

.method public final g(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1178
    .line 2137
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 1179
    return-void
.end method

.method public final j(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1114
    .line 2045
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    .line 1114
    return v0
.end method

.method public final k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1122
    .line 2053
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 1122
    return v0
.end method

.method public final o(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1126
    .line 2057
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 1126
    return v0
.end method

.method public final p(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1130
    .line 2061
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 1130
    return v0
.end method

.method public final q(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1207
    .line 3085
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 1207
    return v0
.end method

.method public final y(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1225
    .line 3149
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1226
    return-void
.end method
