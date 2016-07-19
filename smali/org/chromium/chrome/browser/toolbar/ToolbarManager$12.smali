.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrlServiceObserver;


# instance fields
.field private mSearchEngine:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

.field final synthetic val$templateUrlService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;)V
    .locals 1

    .prologue
    .line 737
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;->val$templateUrlService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;->val$templateUrlService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getDefaultSearchEngineTemplateUrl()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;->mSearchEngine:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    return-void
.end method


# virtual methods
.method public onTemplateURLServiceChanged()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;->val$templateUrlService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getDefaultSearchEngineTemplateUrl()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;->mSearchEngine:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;->mSearchEngine:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;->mSearchEngine:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 751
    :cond_1
    :goto_0
    return-void

    .line 749
    :cond_2
    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;->mSearchEngine:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    .line 750
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$12;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->mToolbar:Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarLayout;->onDefaultSearchEngineChanged()V

    goto :goto_0
.end method
