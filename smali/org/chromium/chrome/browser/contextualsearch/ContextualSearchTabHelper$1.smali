.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper$1;
.super Ljava/lang/Object;
.source "ContextualSearchTabHelper.java"

# interfaces
.implements Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper$1;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTemplateURLServiceChanged()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper$1;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;

    # invokes: Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->onContextualSearchPrefChanged()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;->access$000(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchTabHelper;)V

    .line 88
    return-void
.end method
