.class Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$1;
.super Landroid/widget/ArrayAdapter;
.source "DistilledPagePrefsView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$1;->this$0:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method private overrideTypeFace(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 128
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 129
    check-cast v0, Landroid/widget/TextView;

    .line 130
    invoke-static {}, Lorg/chromium/components/dom_distiller/core/FontFamily;->values()[Lorg/chromium/components/dom_distiller/core/FontFamily;

    move-result-object v1

    aget-object v1, v1, p2

    .line 131
    sget-object v2, Lorg/chromium/components/dom_distiller/core/FontFamily;->MONOSPACE:Lorg/chromium/components/dom_distiller/core/FontFamily;

    if-ne v1, v2, :cond_1

    .line 132
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    :cond_0
    :goto_0
    return-object p1

    .line 133
    :cond_1
    sget-object v2, Lorg/chromium/components/dom_distiller/core/FontFamily;->SANS_SERIF:Lorg/chromium/components/dom_distiller/core/FontFamily;

    if-ne v1, v2, :cond_2

    .line 134
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 135
    :cond_2
    sget-object v2, Lorg/chromium/components/dom_distiller/core/FontFamily;->SERIF:Lorg/chromium/components/dom_distiller/core/FontFamily;

    if-ne v1, v2, :cond_0

    .line 136
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$1;->overrideTypeFace(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 118
    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$1;->overrideTypeFace(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
