.class public Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;
.super Ljava/lang/Object;
.source "OverlayPanelManager.java"


# instance fields
.field private mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

.field private mContainerViewGroup:Landroid/view/ViewGroup;

.field private mDynamicResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

.field private mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

.field private final mPanelSet:Ljava/util/Set;

.field private mPendingPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

.field private mPendingReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field private mSuppressedPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPanelSet:Ljava/util/Set;

    .line 64
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPanelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 145
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->destroy()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPanelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 148
    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 149
    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mSuppressedPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 152
    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    .line 153
    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mDynamicResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    .line 154
    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mContainerViewGroup:Landroid/view/ViewGroup;

    .line 155
    return-void
.end method

.method public getActivePanel()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    return-object v0
.end method

.method public notifyPanelClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SUPPRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    if-ne p2, v0, :cond_3

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    if-ne v0, p1, :cond_0

    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->canBeSuppressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mSuppressedPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 114
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPendingPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPendingReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->peekPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 116
    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPendingPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 117
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPendingReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    if-ne p1, v0, :cond_4

    .line 122
    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mSuppressedPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mSuppressedPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNSUPPRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->peekPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 128
    :cond_4
    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mSuppressedPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    goto :goto_0
.end method

.method public onSizeChanged(FF)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPanelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 197
    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->onSizeChanged(FF)V

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method public registerPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->setHost(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mDynamicResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mDynamicResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->setDynamicResourceLoader(Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mContainerViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->setContainerView(Landroid/view/ViewGroup;)V

    .line 219
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPanelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public requestPanelShow(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
    .locals 3

    .prologue
    .line 73
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    if-ne p1, v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    if-nez v0, :cond_2

    .line 77
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->peekPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPriority()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;->ordinal()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->getPriority()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager$PanelPriority;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 86
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPendingPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 87
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPendingReason:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mActivePanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SUPPRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->closePanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->canBeSuppressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mSuppressedPanel:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    goto :goto_0
.end method

.method public setContainerView(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 184
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mContainerViewGroup:Landroid/view/ViewGroup;

    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPanelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 186
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->setContainerView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public setDynamicResourceLoader(Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 2

    .prologue
    .line 173
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mDynamicResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPanelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 175
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->setDynamicResourceLoader(Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public setPanelHost(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;)V
    .locals 2

    .prologue
    .line 162
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mOverlayPanelHost:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;

    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelManager;->mPanelSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;

    .line 164
    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;->setHost(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelHost;)V

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method
