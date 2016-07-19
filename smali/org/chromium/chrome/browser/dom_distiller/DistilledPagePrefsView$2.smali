.class Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$2;
.super Ljava/lang/Object;
.source "DistilledPagePrefsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 149
    invoke-static {p3}, Lorg/chromium/components/dom_distiller/core/FontFamily;->getFontFamilyForValue(I)Lorg/chromium/components/dom_distiller/core/FontFamily;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$2;->this$0:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;
    invoke-static {v1}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->access$000(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;)Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->setFontFamily(Lorg/chromium/components/dom_distiller/core/FontFamily;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
