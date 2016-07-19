.class public interface abstract Lorg/chromium/mojom/catalog/mojom/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Resolver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Resolver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract resolveInterfaces([Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveInterfacesResponse;)V
.end method

.method public abstract resolveMimeType(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveMimeTypeResponse;)V
.end method

.method public abstract resolveProtocolScheme(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveProtocolSchemeResponse;)V
.end method

.method public abstract resolveResponse(Lorg/chromium/mojom/mojo/UrlResponse;Lorg/chromium/mojom/catalog/mojom/Resolver$ResolveResponseResponse;)V
.end method
