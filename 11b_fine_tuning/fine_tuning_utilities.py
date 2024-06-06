def load_jsonl_file(file_path):
    import json
    with open(file_path, 'r') as file:
        data = [json.loads(line) for line in file]
    return data


def save_jsonl_file(dictionary_data, final_file_name):
    import json
    with open(final_file_name, 'w') as outfile:
        for entry in dictionary_data:
            json.dump(entry, outfile)
            outfile.write('\n')
            
def prompt_chatGPT(message:str, model="gpt-3.5-turbo"):
    """A prompt helper function that sends a message to openAI
    and returns only the text response.
    """
    import openai
    
    # convert message in the right format if necessary
    if isinstance(message, str):
        message = [{"role": "user", "content": message}]
        
    # setup connection to the LLM
    client = openai.OpenAI()
    
    # submit prompt
    response = client.chat.completions.create(
        model=model,
        messages=message
    )
    
    # extract answer
    return response.choices[0].message.content

prompt = prompt_chatGPT