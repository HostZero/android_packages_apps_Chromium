.class Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "CookieStore_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/CookieStore$SetResponse;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1

    .prologue
    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput-object p1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 874
    iput-object p2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 875
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mRequestId:J

    .line 876
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 880
    new-instance v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;-><init>()V

    .line 882
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->success:Z

    .line 884
    iget-object v1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v2, v3, v4, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 891
    iget-object v1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 892
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 863
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->call(Ljava/lang/Boolean;)V

    return-void
.end method
