.class Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;
.super Ljava/lang/Object;
.source "StaticLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v6, 0x1f4

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    # setter for: Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mUnstalling:Z
    invoke-static {v0, v10}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->access$002(Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;Z)Z

    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v2, v0, v10

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SATURATION:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getSaturation()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 49
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v2, v0, v10

    sget-object v3, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->STATIC_TO_VIEW_BLEND:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->getStaticToViewBlend()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout$UnstallRunnable;->this$0:Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/layouts/StaticLayout;->mLayoutTabs:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;

    aget-object v0, v0, v10

    invoke-virtual {v0, v10}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab;->setShouldStall(Z)V

    goto :goto_0
.end method
