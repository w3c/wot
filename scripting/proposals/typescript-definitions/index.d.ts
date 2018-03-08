/// <reference types="es6-promise" />

import { Promise } from 'es6-promise';

export as namespace WoT;

export default WoT;

declare let WoT : WoTFactory;

export interface WoTFactory {
    /**
     * Discover Things  
     * 
     * @param discoveryType identifier of the type of discovery (e.g. local or repository)
     */
    discover(discoveryType: string, filter: Object): Promise<ConsumedThing>;

    /**
     * consume a thing description by URI and return a client representation object
     * @param uri URI of a thing description
     */
    consumeDescriptionUri(uri: string): Promise<ConsumedThing>;

    /**
     * consume a thing description from an object and return a client representation object
     * 
     * @param thingDescription a thing description
     */
    consumeDescription(thingDescription: Object): Promise<ConsumedThing>;

    /**
     * create a new Thing
     * 
     * @param name name/identifier of the thing to be created 
     */
    createThing(name: string): Promise<DynamicThing>;

    /**
     * create a new Thing based on a thing description, given by a URI
     * 
     * @param uri URI of a thing description to be used as "template" 
     */
    createFromDescriptionUri(uri: string): Promise<ExposedThing>;

    /**
     * create a new Thing based on a thing description, given by an object
     * 
     * @param thingDescription a thing description to be used as "template"
     */
    createFromDescription(thingDescription: Object): Promise<ExposedThing>;

}

export interface ConsumedThing {
    /** name of the Thing */
    name: string

    /** invokes an action on the target thing 
     * @param actionName Name of the action to invoke
     * @param parameter optional json object to supply parameters  
    */
    invokeAction(actionName: string, parameter?: any): Promise<any>

    /**
     * Set a given property
     * @param Name of the property
     * @param newValue value to be set  
     */
    setProperty(propertyName: string, newValue: any): Promise<any>

    /**
     * Read a given property
     * @param propertyName Name of the property 
     */
    getProperty(propertyName: string): Promise<any>

    addListener(eventName: string, listener: (event: Event) => void): ConsumedThing
    removeListener(eventName: string, listener: (event: Event) => void): ConsumedThing
    removeAllListeners(eventName: string): ConsumedThing

    /**
     * Retrive the thing description for this object
     */
    getDescription(): Object
}

export interface ExposedThing {
    /** name of the Thing */
    name: string

    /** invokes an action on the target thing 
     * @param actionName Name of the action to invoke
     * @param parameter optional json object to supply parameters  
    */
    invokeAction(actionName: string, parameter?: any): Promise<any>

    /**
     * Set a given property
     * @param Name of the property
     * @param newValue value to be set  
     */
    setProperty(propertyName: string, newValue: any): Promise<any>

    /**
     * Read a given property
     * @param propertyName Name of the property 
     */
    getProperty(propertyName: string): Promise<any>

    /**
     * Emit event to all listeners
     */
    emitEvent(event: Event): void

    addListener(eventName: string, listener: (event: Event) => void): ExposedThing
    removeListener(eventName: string, listener: (event: Event) => void): ExposedThing
    removeAllListeners(eventName: string): ExposedThing


    /**
     * register a handler for an action
     * @param actionName Name of the action
     * @param cb callback to be called when the action gets invoked, optionally is supplied a parameter  
     */
    onInvokeAction(actionName: string, cb: (param?: any) => any): ExposedThing

    /**
     * register a handler for value updates on the property
     * @param propertyName Name of the property
     * @param cb callback to be called when value changes; signature (newValue,oldValue)
     */
    onUpdateProperty(propertyName: string, cb: (newValue: any, oldValue?: any) => void): ExposedThing

    /**
     * Retrive the thing description for this object
     */
    getDescription(): Object
}

export interface DynamicThing extends ExposedThing {
    /**
     * declare a new property for the thing
     * @param propertyName Name of the property
     * @param valueType type specification of the value (JSON schema) 
     */
    addProperty(propertyName: string, valueType: Object, semanticType? : SemanticType[]): DynamicThing

    /**
     * declare a new action for the thing
     * @param actionName Name of the action
     * @param inputType type specification of the parameter (optional, JSON schema)
     * @param outputType type specification of the return value (optional, JSON schema)
     */
    addAction(actionName: string, inputType?: Object, outputType?: Object, semanticType? : SemanticType[]): DynamicThing

    /**
     * declare a new eventsource for the thing
     */
    addEvent(eventName: string, semanticType? : SemanticType[]): DynamicThing

    /**
     * remove a property from the thing
     */
    removeProperty(propertyName: string): boolean

    /**
     * remove an action from the thing
     */
    removeAction(actionName: string): boolean

    /**
     * remove an event from the thing
     */
    removeEvent(eventName: string): boolean
}

/**
 * Semantic type for an interaction, eqiv. to the TD entries
 * To be discussed: simple form based on default context?
 */
declare class SemanticType {

    /** name / identifier */
    public name : string;

    /** the context, e.g. URI for JSON-LD*/
    public context : string;
}