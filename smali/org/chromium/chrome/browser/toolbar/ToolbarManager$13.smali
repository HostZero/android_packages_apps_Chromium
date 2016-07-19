.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$13;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

.field final synthetic val$templateUrlService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$13;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$13;->val$templateUrlService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTemplateUrlServiceLoaded()V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$13;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    # invokes: Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->registerTemplateUrlObserver()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->access$3000(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V

    .line 772
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$13;->val$templateUrlService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->unregisterLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V

    .line 773
    return-void
.end method
