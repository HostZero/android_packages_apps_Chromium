.class Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$3;
.super Ljava/lang/Object;
.source "DistilledPagePrefsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

.field final synthetic val$theme:Lorg/chromium/components/dom_distiller/core/Theme;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;Lorg/chromium/components/dom_distiller/core/Theme;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$3;->this$0:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    iput-object p2, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$3;->val$theme:Lorg/chromium/components/dom_distiller/core/Theme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$3;->this$0:Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    # getter for: Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->access$000(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;)Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$3;->val$theme:Lorg/chromium/components/dom_distiller/core/Theme;

    invoke-virtual {v0, v1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->setTheme(Lorg/chromium/components/dom_distiller/core/Theme;)V

    .line 251
    return-void
.end method
